# Simple arithmetic, exporting/importing files, adding and opening packages

# to use R as a calculator
1 + 2

# to assign the output of a calculation as an object use the <- symbol
# note: the ^ symbol is to the power of
x <- 1 + 2^10
y <- 2 + 3

# these objects can be combined into their own calculations
z <- y - x

# just typing the name of an object prints it out in the console
z 

# Installing and opening packages
# to download a package, use the command install.packages() with the name of the package you want in quotation marks
install.packages("tidyverse")

# after you have installed a package, you need to open it with the command library(), and the name will not need quotation marks
library(tidyverse)
library(readxl)

iris
mtcars
# I'm using a command, write_csv() to export a dataset that comes included in R, that way we can read back in later
write_csv(iris, "~/Desktop/iris_export.csv")

# bring the file back in from your desktop using read_csv()
iris_export <- read_csv("~/Desktop/iris_export.csv")

# this creates a new object in your environment called iris_export

# to see the file as a spreadsheet you can use the command View()
View(iris_export)

write_csv(mtcars,"~/Documents/Phd/R-coding club/mtcars_export.csv")
mtcars_export<-read_csv("~/Documents/Phd/R-coding club/mtcars_export.csv")
view(mtcars_export)

#here is an example from teh help section for dplyr::filter
starwars
jabba<-filter(starwars, mass > 1000)

#you can have your cursor in any part of the command to run the entire command or highlight part of the command to run only part of a line
# can assign a varaible to filtered results if you want to recall that information 

jabba

#if you are saving a file/wirting a new file, if location not specified, then automatically saves file in the location of the Rstudio project 
