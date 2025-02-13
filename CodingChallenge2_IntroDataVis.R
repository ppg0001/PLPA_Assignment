### CodingChallenge2_IntroDataVis ####
## Author: Pankaj


# Setting up relative path to the file for analysis
csv <- read.csv("C:/Users/panka/OneDrive/Documents/PLPA_Assignment/MycotoxinData.csv", na.strings = "na")


## Question 2.	
## Make a boxplot using ggplot with DON as the y variable, treatment as the x variable, and color mapped to the wheat cultivar. 
## Show the code you use to load the libraries you need to read in the data and make the plot. 
## Change the y label to “DON (ppm)” and make the x label blank.


#load libraries
library(ggplot2)
#Check data/variable categorical or continious
head(csv)

  ggplot(csv, aes(x = Treatment, y = DON, color = Cultivar))+
    geom_boxplot() + 
    xlab("") +
    ylab("DON (ppm)")
  


## Question 3
##Now convert this data into a bar chart with standard-error error bars using the stat_summary() command.

  ggplot(csv, aes(x = Treatment, y = DON, color = Cultivar))+
    stat_summary(fun=mean, geom = "bar") +
    stat_summary(fun.data = mean_se, geom = "errorbar")+
    xlab("") +
    ylab("DON (ppm)")
  

## Question 4
## Add points to the foreground of the boxplot and bar chart you made in question 3 that show the distribution of points over the boxplots. 
## Set the shape = 21 and the outline color black (hint: use jitter_dodge). 
  
  
##box plot
  ggplot(csv, aes(x = Treatment, y = DON, fill  = Cultivar))+
    geom_boxplot() + 
    xlab("") +
    ylab("DON (ppm)")+
    geom_point(shape = 21, poisition = position_jitterdodge())
  
##barplot
    
  ggplot(csv, aes(x = Treatment, y = DON, fill = Cultivar))+
    stat_summary(fun=mean, geom = "bar") +
    stat_summary(fun.data = mean_se, geom = "errorbar")+
    xlab("") +
    ylab("DON (ppm)") +
    geom_point(shape = 21, poisition = position_jitterdodge())
    
    
## Question 5
##Change the fill color of the points and boxplots to match some colors in the following colorblind pallet. 
  ##cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
  
  
  ggplot(csv, aes(x = Treatment, y = DON, color = Cultivar))+
    geom_boxplot() + 
    xlab("") +
    ylab("DON (ppm)") +
    geom_point(shape = 21, poisition = position_jitterdodge())
  
  
  
  
  
  
  