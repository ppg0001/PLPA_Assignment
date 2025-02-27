#### Data Visualization 2 _ Class_coding challenge ####
## Student name: Pankaj Gaonkar


## load library
library(tidyverse)
library(ggpubr)  #integrating stats in multiple plots
#library(ggrepel) # for labelling points

## Load Palette
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

# Setting up relative path to the file for analysis
csv <- read.csv("C:/Users/panka/OneDrive - Auburn University/PLPA_class/Coding challenge_datavis2/MycotoxinData.csv", na.strings = "na")
csv


## Q1 Using ggplot, create a boxplot of DON by Treatment so that the plot looks like the image below.

#Plot1 Treatment on Y

P1 <- ggplot(csv, aes(x = Treatment, y = DON, fill = Cultivar))+
  theme_classic() +                # removes the grids
  geom_boxplot() + 
  xlab("") +
  ylab("DON (ppm)") +
  geom_point(alpha = 0.6, shape = 21, position = position_jitterdodge()) +
  scale_fill_manual (values = c("#56B4E9", "#009E73")) +
  facet_wrap(~ Cultivar) 

P1

## Q2 Change the factor order level
str(csv)

csv$Treatment <- factor(csv$Treatment, levels = c("NTC", "Fg","Fg + 37", "Fg + 40", "Fg + 70"))


## Q3 Change the y-variable to plot X15ADON and MassperSeed_mg. The y-axis label should now be “15ADON” and “Seed Mass (mg)”. 
#Save plots made in questions 1 and 3 into three separate R objects.


#Plot2 X15ADON on Y

P2 <- ggplot(csv, aes(x = Treatment, y = X15ADON, fill = Cultivar))+
  theme_classic() +                # removes the grids
  geom_boxplot() + 
  xlab("") +
  ylab("15ADON") +
  geom_point(alpha = 0.6, shape = 21, position = position_jitterdodge()) +
  scale_fill_manual (values = c("#56B4E9", "#009E73")) +
  facet_wrap(~ Cultivar) 

P2


#Plot3 MassperSeed_mg on Y

P3 <- ggplot(csv, aes(x = Treatment, y = MassperSeed_mg, fill = Cultivar))+
  theme_classic() +                # removes the grids
  geom_boxplot() + 
  xlab("") +
  ylab("Seed Mass (mg)") +
  geom_point(alpha = 0.6, shape = 21, position = position_jitterdodge()) +
  scale_fill_manual (values = c("#56B4E9", "#009E73")) +
  facet_wrap(~ Cultivar) 


P3

## Q4 Use ggarrange function to combine all three figures into one with three columns and one row. Set the labels for the subplots as A, B and C. 
#Set the option common.legend = T within ggarage function. What did the common.legend option do?
#ANSWER: common.legend = T, By using this funtions the legeneds for this plots "Cultivar  - Ambassador and Wheeaton" were made common for all three plots.


Combined_plot <- ggarrange(
  P1,   ## add the plots onf interest subsequently
  P2,
  P3,
  labels = "auto",  # Automatically label the plots (A, B, C, etc.)
  nrow = 1,  # Arrange the plots in # rows
  ncol = 3,  # Arrange the plots in # column
  common.legend = T
)

Combined_plot


## Q5 5.	5pts. Use geom_pwc() to add t.test pairwise comparisons to the three plots made above. 
#Save each plot as a new R object, and combine them again with ggarange as you did in question 4. 

P1_stat <- P1 + 
            geom_pwc(aes(group = Treatment), method = "t_test", label = "p.adj.format")
P1_stat


P2_stat <- P2 + 
  geom_pwc(aes(group = Treatment), method = "t_test", label = "p.adj.format")
P2_stat


P3_stat <- P3 + 
  geom_pwc(aes(group = Treatment), method = "t_test", label = "p.adj.format")
P3_stat


#combining
Combined_plot_stat <- ggarrange(
  P1_stat,   ## add the plots onf interest subsequently
  P2_stat,
  P3_stat,
  labels = "auto",  # Automatically label the plots (A, B, C, etc.)
  nrow = 1,  # Arrange the plots in # rows
  ncol = 3,  # Arrange the plots in # column
  common.legend = T
)

Combined_plot_stat

## Q6 Annotate your code, push it to GitHub. Provide me a link to your GitHub
#My GitHub repository link to R code: https://github.com/ppg0001/PLPA_Assignment/blob/main/CodingChalleng3_AdvancedVis.R





