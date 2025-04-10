##Coding assignment_DataVis part1

data("mtcars")
str(mtcars)


### Plotting using base R ###
plot(mtcars$wt, mtcars$mpg,
     xlab = "car weight",
     ylab = "miles per gallon",
     font.lab=6,
     pch = 23)


### ggplot ###

library(ggplot2) #loading ggplot
ggplot()  #provide input in brackets

ggplot(mtcars, aes(x = wt, y = mpg)) +  # + sign adds layers
 geom_point() +   #adds points
  geom_smooth(method = lm, se = FALSE)   # adds straight line, fitting linear model

#change in order of layers (minor but matters sometimes)
#aes means aesthetic, it is intresting but caution where you apply.
#If you apply aes in main frame (i.e in x,y bracket at start it will apply to everythinh).
#Instead apply aes specifically in the layer where necessary. (This decision will vary as per requirement)

ggplot(mtcars, aes(x = wt, y = mpg))+
  geom_smooth(method = lm, se = FALSE, color = "grey")+
  geom_point(aes(size = wt), color = "blue") +    #can add color or other stuff inisde bracket for points
  xlab("weight") +
  ylab("miles per gallon")

ggplot(mtcars, aes(x = wt, y = mpg))+
  geom_smooth(method = lm, se = FALSE, color = "grey") +
  geom_point(aes(size = wt, color = wt)) +    #can color as per quantity of the variable as interest
  xlab("weight") +
  ylab("miles per gallon") +
  scale_color_gradient(low = "green", high = "red")+    #gradient based coloring for high low quanitity
  scale_x_log10()                     #ading log based scale
  scale_y_continuous(labels = scales::percent)


## setting working directory for further part of assignment
  #setwd("C:/Users/panka/OneDrive - Auburn University/PLPA_class")
  
#Categorical
  
#loading file from the set working directory
  bull.richness <- read.csv("Bull_richness.csv")


  bull.richness.soy.no.till <- bull.richness[bull.richness$Crop == "Soy" & 
                                               bull.richness$Treatment == "No-till",] 

## Position use case, categorical variable
  
  ggplot(bull.richness.soy.no.till, aes(x = GrowthStage, y = richness, color = Fungicide)) +
      geom_boxplot() +
    xlab("") +
    ylab("fungal richness") +
    geom_point(poisition = position_jitterdodge) # Positiona help prevent overlapping, Also dodge, it will dodge the points, but jitter will overlay but not be in the way of plot.

## Bar chart ##
  
  
## Box plot
 
##INTRESTING, if you move geom_point to second line/layer, the points on bar will get hidden, but if you keep it at end then point will be on the bar!
   ggplot(bull.richness.soy.no.till, aes(x = GrowthStage, y = richness, color = Fungicide)) +
    stat_summary(fun=mean, geom = "bar") +
    stat_summary(fun.data = mean_se, geom = "errorbar", position = "dodge") +
    xlab("") +
    ylab("fungal richness") +
    geom_point(poisition = position_jitterdodge(dodge.width = 0.9))
   

## Line plots  

   ggplot(bull.richness.soy.no.till, aes(x = GrowthStage, y = richness, group = Fungicide, color = Fungicide)) +  #need to add group function to connect the lines, can play around by removing and adding any function,variable.
     #geom_point(poisition = position_jitterdodge(dodge.width = 0.9)) +
     stat_summary(fun=mean, geom = "line") +     #Change the type of graph bar/line here in geom
     stat_summary(fun.data = mean_se, geom = "errorbar") +
     xlab("") +
     ylab("fungal richness")
  
#For large structured data - Faceting
   
## Faceting
   
##Example1  
   ggplot(bull.richness, aes(x = GrowthStage, y = richness, group = Fungicide, color = Fungicide)) +
     stat_summary(fun=mean, geom = "line") +
     stat_summary(fun.data = mean_se, geom = "errorbar") +
     xlab("") +
     ylab("fungal richness") +
     facet_wrap(~Treatment)       #FACETING as per treatment
   
##Example2 
   ggplot(bull.richness, aes(x = GrowthStage, y = richness, group = Fungicide, color = Fungicide)) +
     stat_summary(fun=mean, geom = "line") +
     stat_summary(fun.data = mean_se, geom = "errorbar") +
     xlab("") +
     ylab("fungal richness") +
     facet_wrap(~Treatment*Crop)
   
##Example3 - scales 
   ggplot(bull.richness, aes(x = GrowthStage, y = richness, group = Fungicide, color = Fungicide)) +
     stat_summary(fun=mean, geom = "line") +
     stat_summary(fun.data = mean_se, geom = "errorbar") +
     xlab("") +
     ylab("fungal richness") +
     #facet_wrap(~Treatment*Crop, scales = "free")   #playing around scales
     facet_wrap(~Treatment*Crop, scales = "free_y")
     
   
##Example4 changing order of facet wrap
   ggplot(bull.richness, aes(x = GrowthStage, y = richness, group = Fungicide, color = Fungicide)) +
     stat_summary(fun=mean, geom = "line") +
     stat_summary(fun.data = mean_se, geom = "errorbar") +
     xlab("") +
     ylab("fungal richness") +
     facet_wrap(Crop ~ Treatment, scales = "free")   #Changing order of crop and treatment

############################################################################################################
  
  

 