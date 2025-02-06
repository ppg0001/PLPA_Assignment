## Qustion 4: Complete all tasks in an R script and push it to GitHub.
## Intro to R coding challenge

## Create a vector named 'z' with the values 1 to 200
z <- 1:200
## Print the mean and standard deviation of z on the console
mean(z)
sd(z)

## Create a logical vector named zlog that is 'TRUE' for z values greater than 30 and 'FALSE' otherwise.

zlog = z>30
zlog

## Make a dataframe with z and zlog as columns. Name the dataframe zdf

zdf <- data.frame(z,zlog)

## Change the column names in your new dataframe to equal “zvec” and “zlogic”

colnames(zdf) <- c ("zvec", "zlogic")


## Make a new column in your dataframe equal to zvec squared (i.e., z2). Call the new column zsquared. 

zdf$zvec
zdf$zsquared <- zdf$zvec^2
head(zdf)

## Subset the dataframe with and without the subset() function to only include values of zsquared greater than 10 and less than 100 

zdf[zdf$zsquared >10 & zdf$zsquared <100,]

subset(zdf, zdf$zsquared >10 & zdf$zsquared <100)

## Subset the zdf dataframe to only include the values on row 26
zdf[26,]

##	Subset the zdf dataframe to only include the values in the column zsquared in the 180th row.
zdf[180, "zsquared"]

## Completion of question 4.

## Question 5 Tips.csv file
csv_tips <- read.csv(file.choose(), na.strings = "na") 



