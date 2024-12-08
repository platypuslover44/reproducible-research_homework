Virus_Data <- Cui_etal2014

#Find how many rows and columns
dim(Virus_Data)

#Name key variables in the equation 
Virion_Volume <- Virus_Data$`Virion volume (nm×nm×nm)`
Genome_Length <- Virus_Data$`Genome length (kb)`

#We want to log transform to linearise 
log_virion_volume <- log(Virion_Volume)
log_genome_length <- log (Genome_Length)

#Create a linear model 
linear_model <- lm(log_virion_volume ~ log_genome_length, data = Virus_Data)
summary(linear_model)

#Plotting logV against logL
library(ggplot2)
ggplot(Virus_Data, aes(x = log_genome_length, y = log_virion_volume)) +
  geom_point(size = 2) +
  geom_smooth(data = Virus_Data, aes(x = log_genome_length, y = log_virion_volume), method = "lm", se = TRUE, color = "blue") +
  labs(x = "log [Genome length (kb)]", 
    y = "log [Virion volume (nm3)]") + 
  theme_minimal() + 
  theme( axis.title.x = element_text(face = "bold"), 
        axis.title.y = element_text(face = "bold"))

#Predicting estimated volume of a 300kb dsDNA virus
extrapolation = data.frame(log_genome_length = log(300))
prediction <- predict(linear_model, extrapolation)
exp(prediction)        
                      