# Basic mathematical operators in R
# Understanding data types, installing package and loading data into R

#### Excercise 1 ####
# R is big calculator

2+2
2-2
2/2
2*2

#### Excercise 2 #####
# Objects _ storing

# Numeric variables

x <- 2
y = 3    #This is not the preffere syntax. Preffered syntax for storing object is <-
x + y
x - y
x/y
seven + x # This will give error. Jus for example how R can fail and we need to be cautious.

### Character variables ###

name <- "Pankaj"
seven <- "7"

x + seven  #When we have arithmetic operation we need numeric argument. Therefore we are getting error because 7 was in quote
seven <- 7
x + seven  # this works because 7 not in quotes and no more considered as character variable. Instead treated as numeric.
seven <- "7" # this is character

#### Functions ###   
#(Remember objects can be manipulated with function)
class(seven)   # class tells us the type of variable e.g. character or numeric
class(x)

#Concatenate function
#It useful for making streaks of things
# this is concatenate function:  c()
vec <- c(1,2,3,4,5,6,7)
vec1 <- c(1:7)
vec <- 1:7
vec2 <- c("Ron","Ram","Gram")
vec3 <- c("True", "False")

vec [4]    #square bracket will call the sequence from that vector
vec2 [2]
vec + 2   #This will add value(2) all the numbers in vector

### Basic functions in R ###
#Just did few examples of basic statistics
vec
mean(vec)
sd(vec)
median(vec)
summary(vec)
sqrt(vec)
sqrt(sum(vec))  #slight complex calculation, to see how we can play around the vectors
exp(vec)

### Logical operators ###
# > (greater than)
# | or
# = (used to assign value from left to right)
# == (exactly equal to)
# >= (greater than or equal to)
# != (not equal to)

1 > 2
1 < 2
1 == 1  # this is asking 1 equal to 1 is true or not
1 = 1   # Error

t <- 1:10

#VALUES OF T SUCH THAT T IS GREATER THAN 8 OR LESS THAN 5
t[(t > 8) | (t < 5)]  #use square bracket to find number in vector

# ELEMENTS OF T THAT ARE NOT EXACTLY 2
t[t != 2]

#Ask R if number exists in a vector
32 %in% t     # the %in% is asking


### Data types ###
# We will most be working with data frames
# scalar objects covered above
X
# vectors covered above
t

# matrix

#numeric matrix
mat1 <- matrix(data = c(1,2,3), nrow = 3, ncol = 3)  #3 rows and 3 columns for my data, NUMERIC MATRIX

#character matrix
mat2 <- matrix(data = c("ron","john","don"), nrow = 3, ncol = 3) #character matirx

mat1
mat1 [1]  #first value in mat1
mat2
mat2 [2]
mat2 [1,3] # first row third column
mat2 [1,] #first row
mat2 [,3] # third column print


### Data frames ###
#dataframes are basically the matrices but think of it with the multiple data types/classes

df <- data.frame(mat1[,1], mat2[,1])
df

colnames(df) <- c ("value", "name")  #ASSIGNING COLUMN NAMES MANUALLY
df

df[1,2] #first row second column

df$value # accessing the column, multiple ways to access the data frame
df$value[1]
df$name[3]

# Subsetting or indexing- when we want certain  values,rows,column

# the element of column value such that name is equal to john
df$value[df$name == "john"]

df$value[df$name == c("john", "don")] #ERROR
#INSTEAD USE %in%
df$value[df$name %in% c("john", "don")] #IMPORTANT

df$value[df$name != c("john")] #for excluding

# Return the elements of the column value within the dataframe df such that names is not equal to John or Don
df$value[!df$name %in% c("john", "don")] #for excluding MULTIPLE

#subset function
subset(df, name == "don")

#making a new column in a dataframe
df$log_value <- log(df$value)      #IMPORTANT__WILL MAKE MY LIFE EASIER
df


### Installing package ###
#Example
install.packages("dplyr")
library(dplyr)


### Loading data in R ###
#We will deal with .csv and .txt file

csv <- read.csv("C:/Users/ppg0001/Downloads/corr.csv", na.strings = "na")

csv2 <- file.choose()

csv3 <- read.csv(file.choose(), na.strings = "na")  #THIS IS THE BEST
csv3














