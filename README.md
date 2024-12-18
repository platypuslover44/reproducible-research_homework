# Reproducible research: version control and R

### Questions 1, 2, and 3

My answers to these questions can be found in the README.md file of my [logistic_growth repository](https://github.com/poetictable56/logistic_growth/tree/main).

### Question 4 
**a)** Every time you run the code you get two different random walks. In the plots, the darker blue is where they start the walk (at 0,0) and the lighter blue is where they end. The start point is fixed but end point is extremely variable. The axes are different, indicating that some walks will go much further in some directions than others. There is often a lot of going back on themselves and sometimes even travelling in a full loop, although sometimes (rarely) there is consistent travel in one direction.
  
**b)** A random seed is a number used to initialise a pseudorandom number generator so that when you put the same seed into the generator you always get the same sequence of numbers output (so not a truly random output). This allows you to produce random patterns that are reproducible.

**c & d)** Here is the edit I made to include a random seed in the code (I randomly chose the number 44), so that the runif() function always generates same random numbers for the random walk:

![Comparison View](my-homework-files/Q4_Commit_Zoomed.png)

### Question 5

**a)** The table has 13 columns and 33 rows (excluding the header row)

**b)** I use a (natural) log transformation on virion volume and genome length to linearise into y = mx  + c form - turns the allometric equation into log(V) = log(α) + βlog(L)

**c)** Based on ths transformed equation, the coefficient of the intercept is logα and the coefficient of genome length (L) is β.

| Coefficient    | Estimate | P-Value   |
| -------------- | -------- | --------- |
| Intercept      | 7.0748   | 2.28e-10  |
| Genome Length  | 1.5152   | 6.44e-10  |

*Linear model output based on data from Cui et al., 2014*

Based on this, logα (intercept) = 7.0748, so **α = 1181.807116**, and based on the p value this is highly significant.

**β = 1.5152** and this is also highly statistically signifcant based on the p value.

Based on table 2 The paper found alpha to be 1,182 (246–5,675) and beta to be 1.52 (1.16–1.87) for dsDNA viruses, and my estimates fall into both of the 95% confidence intervals for both parameters.

**d)** My code to plot this graph can be found in `virus_analysis.R`

**e)** Based on the linear model I estimated the volume of a 300kb dsDNA virus to be 6698076 nm3




## Instructions

The homework for this Computer skills practical is divided into 5 questions for a total of 100 points. First, fork this repo and make sure your fork is made **Public** for marking. Answers should be added to the # INSERT ANSWERS HERE # section above in the **README.md** file of your forked repository.

Questions 1, 2 and 3 should be answered in the **README.md** file of the `logistic_growth` repo that you forked during the practical. To answer those questions here, simply include a link to your logistic_growth repo.

**Submission**: Please submit a single **PDF** file with your candidate number (and no other identifying information), and a link to your fork of the `reproducible-research_homework` repo with the completed answers (also make sure that your username has been anonymised). All answers should be on the `main` branch.

## Assignment questions 

1) (**10 points**) Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for $N_0$, $r$ and $K$ (mention which *.csv file you used).

2) (**10 points**) Use your estimates of $N_0$ and $r$ to calculate the population size at $t$ = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth? 

3) (**20 points**) Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the **README.md** file so it can be viewed in the repo homepage.

4) (**30 points**) Sometimes we are interested in modelling a process that involves randomness. A good example is Brownian motion. We will explore how to simulate a random process in a way that it is reproducible:

   a) A script for simulating a random_walk is provided in the `question-4-code` folder of this repo. Execute the code to produce the paths of two random walks. What do you observe? (10 points) \
   b) Investigate the term **random seeds**. What is a random seed and how does it work? (5 points) \
   c) Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo. (10 points) \
   d) Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork). (5 points) 

5) (**30 points**) In 2014, Cui, Schlub and Holmes published an article in the *Journal of Virology* (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form **$`V = \alpha L^{\beta}`$**, where $`V`$ is the virion volume in nm<sup>3</sup> and $`L`$ is the genome length in nucleotides.

   a) Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the `question-5-data` folder). How many rows and columns does the table have? (3 points)\
   b) What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points) \
   c) Find the exponent ($\beta$) and scaling factor ($\alpha$) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in **Table 2** of the paper, did you find the same values? (10 points) \
   d) Write the code to reproduce the figure shown below. (10 points) 

  <p align="center">
     <img src="https://github.com/josegabrielnb/reproducible-research_homework/blob/main/question-5-data/allometric_scaling.png" width="600" height="500">
  </p>

  e) What is the estimated volume of a 300 kb dsDNA virus? (4 points) 

  
