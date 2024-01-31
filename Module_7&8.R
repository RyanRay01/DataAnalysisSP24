#1/29/24

m <- matrix(1:30, nrow = 5, ncol = 6)
m2 <- matrix(1:30, nrow = 5, ncol = 6, byrow = TRUE)

a <- array(data = 1:90, dim = c(5,6,3))

# Array Attributes
dim(a)
class(a)
attributes(a)
str(a)

# Subsetting
# R index starts at 1
# Vector
v <- 1:100
v
v[33:35]
f <- v[33:35]
f
v[c(1,4,5,6,56,56)]

v2 <- c("a","b","c","d")
v2[1]

# Matrix
m3 <- matrix(1:30, 5, 6)
m3
m3[2:4,3:4]

# Array
a2 <- array(dim = c(5,6,3), data = 1:90)
a2
a2[2:4, 3:4, 2:3]

#Lists and Dataframes

s <- c("this", "is", "a", "vector", "of", "strings")
m4 <- matrix(data = 1:40, nrow = 5, ncol = 8)
b <- FALSE  #boolean variable
l <- list(s,m4,b)
# Adds names to list
l2 <- list(string = s, matrix = m, bool = b)

attributes(l)
attributes(l2)

length(l2)

# Lists need double bracket notation
l2[[2]]

# Combine with single bracket to access within matrix
l2[[2]][2,6]

# Does not work with single brackets, only will tell you it is a matrix
# Can not pull from it
l2[[2]]
l2[2]

df <- data.frame(
  firstName = c("Rick", "Negan", "Dwight", "Maggie", "Michonne"),
  community = c("Alexandria", "Saviors", "Saviors", "Hilltop", "Alexandria"),
  sex = c("M", "M", "M", "F", "F")
)

df

head(df,2)

#Read in a file
df2 <- read.csv(
  file = "<file_name>", # file = file.choose() also works
  sep = ",",
  header = TRUE, #Tells R that there are headers for data
  stringsAsFactors = FALSE #DOESNT LET R REASSIGN FACTORS WHEN READING IN
)

# readxl to read in an Excel Doc
library(readxl)

filename <- "<file_name>"
df <- read_excel(
  path = filename, sheet = 1,
  col_names = TRUE
)

#Module 8
# CSV File
f <- "C:/Users/ryanh/OneDrive/Documents/DataAnalysisSP24/CPDS-1960-2014-reduced.csv"
d <- read.table(f, header = TRUE, sep = ",", stringsAsFactors = FALSE)
head(d)

# TXT File
f <- "C:/Users/ryanh/OneDrive/Documents/DataAnalysisSP24/CPDS-1960-2014-reduced.txt"
d <- read.table(f, header = TRUE, sep = ",", stringsAsFactors = FALSE)
head(d)

# XLSX File
f <- "C:/Users/ryanh/OneDrive/Documents/DataAnalysisSP24/CPDS-1960-2014-reduced.xlsx"
d <- read.table(f, header = TRUE, sep = ",", stringsAsFactors = FALSE)
head(d)

