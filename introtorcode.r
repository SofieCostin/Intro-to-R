# *****************************************************************************
###                     STEM2005: Innovation in STEM                        ###
###                     Flinders University, SA                             ###
###                     Introduction to R programming                       ###
###           By Sofie Costin, based on material from Rex Mitchell          ###
###                     Last updated 17/08/2023                             ###
# *****************************************************************************


# Some notes on good practice ---------------------------------------------


# For every analysis, you should begin a new R script and save it to a file that contains your data. This means that when you import and save files and images, they will all be contained within the same folder.

# Each analysis should begin with notes on the author, the date it was last updated, and a brief description of the analysis / project. Also include reference for any data sources used for the analysis. This is known as "metadata" i.e. data about data.

# If you save your workspace at the end of your session, it will save all of the information in your global environment, which is especially handy when your code takes a long time to run.


# Commenting --------------------------------------------------------------


# First thing's first. The hash symbol '#' is known as the 'commenting symbol'. It is used to make notes that are not recognized as code by the software.
# It's convention to follow your # with a space rather than squeezing everything up together.
# You can select several lines of writing and hit ctrl + shift + c to comment / uncomment lines
# To run a line of code that isn't a comment, place your cursor anywhere in the line of code, and hit ctrl + enter (or click run in the top right of your console)


# Basic syntax ------------------------------------------------------------


# R can be used as a calculator, similar to excel.
# '+' is plus
# '-' is minus
# '/' is division
# '*' is multiplication
# '^' is exponent
# 'sqrt' is the square root
# There's others too, some of which we'll get to in these sessions.
# Please use a space between your operators and the other parts of your equations

# Example:
1 + 1
2 ^ 2
sqrt(4)
# Notice the solution is presented in the Console panel below.


# Checkpoint 1:  --------------------------------------------------
# Please write and run three lines of code to answer three simple maths problems


# Assigning objects -------------------------------------------------------


# The arrow '<-' is called the 'Assignment Operator' in R. It is used to assign information to an object.

# You can name the object anything you like.
dirty_socks <- 2 + 2
# Notice that the object appears in the Environment window (top right).

# If you type the object alone, the information it contains is presented in the console, in this case a vector with a single value.
dirty_socks

# You can then call upon that allocated information in further calculations/analyses
dirty_socks * 15
# Notice that an answer of 60 is printed in the console.
# In theory, this could continue ad infinitum. I could allocate the above line to a new object:
clean_shoes <- dirty_socks * 15
# And now the environment contains this object as well for future use.

# This can dramatically shorten coding for later usage

### TWO NOTES ON THIS ###
# 1) R is case-sensitive! Be careful!
# 2) No spaces allowed in object names between words. Instead use '_' or '.'
#### In out lab, we use '_' for objects and '.' for functions!!!


# Functions ---------------------------------------------------------------


# A function is a piece of code written to carry out a specified task.
# They are made for our convenience by other researchers, bless their cotton socks :D

# Parentheses () are used to call a function. These functions are stored in packages
# 
# # If you want to print something in your console, you can use the cat function. 
cat("I would rather wear no socks than dirty socks")

# Checkpoint 2: ---------------------------------------------------
# Tell me what your name is!

# create an object for your name:
myname <- "xxxxxxxxxx" # enter your name here
cat("************ My name is", myname, "************")


# Packages ----------------------------------------------------------------


# Some are automatically loaded when you start R. For example, 'stats'
# To view a package's contents:
library(help = "stats")
# This will open a new window listing all of the details of the package. This should include the authors for citations and all functions to search. When you find a function that you wish to use, you can search that function in the help box (bottom right window, 4th tab) and see exactly how to use it. Alternatively, type '?' followed by the function.
# For example, lets look at the function for a linear model, 'lm'
? lm

# Two other types of packages:
# 1) Base packages: installed with R but are not automatically loaded to save memory. (see list in bottom right window, 3rd tab)
# 2) Contributed packages: created by external parties. Must be installed and loaded. For example, 'geomorph' is specifically tailored for Geometric Morphometrics. This must be installed.

# Three places to find them:
# 1)	Search in the packages window (click install and type the package name)
# 2)	CRAN: comprehensive R archive network. Go to https://cran.r-project.org/
# 3)	GitHub: https://github.com/trending/r


# Data formats ------------------------------------------------------------


# Vectors -----------------------------------------------------------------

# A vector: 1 or more numbers in a 1-dimensional row of all the same data type.
# Lets make a vector of numbers 1 through 18.
# We'll name it after the Vesper martini - a delicious cocktail that was created by Ian Fleming for James Bond in the original Casino Royale novel ;)
vesper <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18)

# The 'c' stands for concatenate or combine. It creates a temporary list for assignment.Notice that 'vesper' has appeared in the environment to the right.

# If you run the object as code, the vector will be presented in the console.
vesper

# Instead of writing all numbers, you can shorten this by just separating the maximum and minimum values by a colon ':'
vesper2 <- c(1:18)
vesper2

# (Note: the difference in the objects in the environment. One is class integer, the other is class numeric. This doesn't matter, as R automatically converts between numeric classes.)

# In addition, if we wished to produce a vector with only numbers one through six and ten through eighteen, we can do this easily:
vesper3 <- c(1:6, 10:18)
vesper3

# This can be important for selecting specific data from a larger dataset.

# Checkpoint 3: ----------------------------------------------------
# Create a vector using 16 numbers of your choice. You can call it anything you like. Call the vector so it's shown on the console


# Indexing vectors --------------------------------------------------------

# let's call our vesper vector
vesper
# we know that this contains the numbers from 1-18. I would like to see what the second element of this vector is.
# Use square brackets [] to call elements from an indexed vector.
vesper[2]

# Now I would like to know the elements 2 to 4
vesper[2:4]

# I'd like to know all elements, except for the second 
vesper[-2]


# Matrices ----------------------------------------------------------------


# A matrix consists of rows and columns. A 2-dimensional array. Matrices require the same length of rows and same data type.
# Let's make a matrix this time, using the same numbers, but divided into 3 rows.
# This time we use the 'matrix' function
? matrix

# We'll name this one after the Manhattan cocktail.
manhattan <- matrix(c(1:18), nrow = 3)
manhattan

# Note that we can also do this with our vesper vector
manhattan2 <- matrix(vesper, nrow = 3)
manhattan2

# Notice how the numbers have been distributed by columns? We can switch this to distribute the numbers by rows if desired.
manhattan3 <- matrix(vesper, nrow = 3, byrow = TRUE)
manhattan3

# 'TRUE' and 'FALSE' arguments in R are called 'logical' arguments.Both can usually be presented as 'T' and 'F' as well and almost never need quotation marks unlike other arguments.


# Checkpoint 4: ---------------------------------------------------
# Turn your vector into a matrix with four rows. Call the matrix so it's shown in the console.


# Indexing matrices -------------------------------------------------------


# Like vectors, values of matrices can be accessed through indexing. There are different ways to do this, but it is generally easiest to use two numbers in a double index, the first for the row number(s) and the second for the column number(s).
 
# Let's call the value from position 2,2 in our manhattan matrix
manhattan[2,2]

# We can see an entire row:
manhattan[2, ]

# or an entire column:
manhattan[ ,2]


# Dataframes --------------------------------------------------------------


# A dataframe is similar to a matrix, in that it consists of rows and columns. The key difference is, that a dataframe can included data of different types. A dataframe is a type of list.
# We can use the as.data.frame function to turn our manhattan matrix into a dataframe
manhattan_df <- as.data.frame(manhattan)

# If we compare our manhattan matrix with our manhattan data frame, we can notice a few differences.
manhattan
manhattan_df

# we can then add a column of characters (called "new") to our manhattan_df
manhattan_df$new <- c('one', 'two', 'three')


# Indexing dataframes -----------------------------------------------------


# we can also use indexing in our dataframe. You can extract the information the same way as for matrices:
manhattan_df[,2] # will return the infomration in the second column of our dataframe.

# but we can also just use
manhattan_df[2]

# Note that whereas [2] would be the second element in a matrix, it refers to the second column in a dataframe. 
# You can also use the column name to get values. This approach also works for a matrix.
manhattan_df[,'V2']

# or you can use
manhattan_df$V2
# The dollar sign '$' is used to extract named elements from a named list or dataframe.
# You can use this to extract columns from a dataframe, which is what we will do later down the track.

# and we can rename one of our column headers
names(manhattan_df)[1] <- 'icePlease'

# check out our new dataframe:
str(manhattan_df) # shows us our column labels, our data types, and the first few data points.

# Checkpoint 5:  --------------------------------------------------
# Turn your vector into a dataframe. Add a column called 'pie' of characters (words) that relate to pies.Rename another column to be called 'pizza'


# Let's look at some data! ------------------------------------------------


# R has many stored datasets
# To view the list:
data()

# You can view the details of each dataset.
? iris # for example

# We can allocate this data to an object, so that it appears in the environment
data <- iris

# The data can be viewed either by clicking on the small table icon to the right
# of the object in the environment, or by run the object as code.
data

# The function 'head' produces the first six lines of the dataset.
head(iris)

# The 'structure' gives the structure of the data, including the data type of each variable
str(iris)

# NOTE: the data is essentially a matrix by coordinates. So we can extract any data via their coordinates, just like before!
# Data[1,2] will give us the first value of the second column (sepal width)
data[1, 2]

data[,2] # will give us the values in the second column
# as will 
data$Sepal.Width


# Let's extract some data ---------------------------------------------------------------------


# We can allocate the variable of sepal length to its own object:
sepalL <- data$Sepal.Length
sepalL
# Sepal length is now a vector with 150 entries.

# Lets do this for all variables. It's not necessary, but it shortens lines of code.
sepalW <- data$Sepal.Width
petalL <- data$Petal.Length
petalW <- data$Petal.Width
species <- data$Species
# Note that species is qualitative
species
# So it is registered as a Factor with 150 observations across three levels.


# Basic data analysis --------------------------------------------------


# Descriptive statistics for the above variables can be found using min(), max(), range(), mean(), median(), IQR(), sd(),and var()

# I would like to know the mean sepal width of the irises in this data:
mean(data$Sepal.Width) # or
mean(sepalW)
# and the standard deviation:
sd(data$Sepal.Width) # or 
sd(sepalW)

# The summary function gives some descriptive statistics for all variable of a dataset:
summary(data)

# If you need the descriptive statistics by groups (e.g. iris species), use the by() function
by(data, data$Species, summary)

# To find other descriptive statistics for each group that are not shown in the summary output, you can use the aggregate() function, combined with the min, max, range, mean, median, IQR, sd, and var functions. 

# The tilde symbol (~) is used within formulas of statistical models, and is used to define the relationship between the dependent variable and the independent variables. The left side of the tilde symbol specifies the dependent variable or outcome and the right side of the tilde specifies the predictor variable / independent variables.

# We would like to find the standard deviation sepal width of each species of iris:
aggregate(sepalW ~ species, data, sd)

# Checkpoint 6: ----------------------------------------------------
# Explore the dataset "sleep".
# What is the mean increase in hours of sleep (+/- SD) for students given each type of drug?


# You're finished - well done! 
random_number <- sample(1:10, 1)

if (random_number <= 5) {
  cat(paste("Congratulations, ", myname, "! You've learned the basics of R programming!\n"))
} else {
  cat(paste("Wow, ", myname, "! You're on your way to becoming an R programming pro!\n"))
}
