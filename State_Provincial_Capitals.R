#  Program to Quiz kids on State_Provincial_Capitals
#  Imports capital_cities.CSV that has 50 states + 13 canadian provinces and territoeis (64 rows)

# here is my working directory - you'll need to map to wherever you put file
getwd()
setwd("/Users/ryan/Code/State_Provincial_Capitals")
getwd()

# Title Plot
plot.new()
mtext(paste("Capital Cities \n ~ Flashcards ~ "), side=3, line = -5, cex=5) 

 
# Import Quiz Data from CSV file
data <- read.csv2("capital_cities.csv", sep=",", header=FALSE) 
#head(data)

# Drops the Levels (tidies up data in data table)
data$V1 <- paste(data$V1)
data$V2 <- paste(data$V2)

# Variables 
delay <- 1.5 # delay time between question and answer - lower number in seconds to speed up
total_cities <- dim(data)[1] #number of rows in CSV

# PART 1 - Let's run through the table SEQUENTIALLY first - top to bottom
for(i in 1:total_cities)
{
  print(i)
  plot.new()
  
  # Print the State/Province
  print(data$V1[i]) # print in console 
  mtext(paste(data$V1[i],"\n"), side=3, line = -5, cex=4) # print in plot area big font
  Sys.sleep(.5)
  system(paste("say ",data$V1[i])) # only works on mac :)
  Sys.sleep(delay)
  
  # Print the Capital City
  print(data$V2[i]) # print in console 
  # print in plot area big font:
  mtext(paste(data$V1[i],"\n",data$V2[i]), side=3, line = -5, cex=4)  
  Sys.sleep(.5)
  system(paste("say ",data$V2[i]))
  Sys.sleep(delay)
  print("======================")
  
}

## PART 2 - RANDOM PHASE - Random number picks and presents at random.  turn "total cities" to 51 to do just USA and Omit Canada (or modify CSV)
while (TRUE)
{
  plot.new()
  #Sys.sleep(.5)
  
  # Random Place Generator
  index <- sample(1:total_cities, 1)
  
  
  # Print the State/Province
  print(data$V1[index]) # print in console 
  mtext(paste(data$V1[index],"\n"), side=3, line = -5, cex=4) # print in plot area big font
  Sys.sleep(.5)
  system(paste("say ",data$V1[index])) # only works on mac :)
  Sys.sleep(delay)
  
  # Print the Capital City
  print(data$V2[index]) # print in console 
  # print in plot area big font:
  mtext(paste(data$V1[index],"\n",data$V2[index]), side=3, line = -5, cex=4)  
  Sys.sleep(.5)
  system(paste("say ",data$V2[index]))  # only works on mac :) - no audio for PC people
  Sys.sleep(delay)
  print("======================")
}
# this will run forever until manual break






