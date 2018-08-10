# Generating fictitious data (e.g., for teaching)
# Released 8-10-18
# Patrick Downes (patrick.downes@tcu.edu)
require(MASS)

vars <- list('x1','x2','y') #names of variables
n <- 1000 #sample size

means <- rep(3,length(vars)) #variable means, I usually use 0 or 3

# Create the desired correlation matrix below. 
# TIP: Set the variances (along the diagonal) to 1
# TIP: Make sure you have the correct number of cells!
cormat <- matrix(c(1,.2,.4,
                   .2,1,.5,
                   .4,.5,1),nrow=length(vars),ncol=length(vars),byrow=T)

colnames(cormat) <- rownames(cormat) <- vars #naming the cormat
  
output.data <- mvrnorm(n,means,cormat) #actually build the dataset

cor(output.data) #check the correlations

write.csv(output.data,"/Users/pdownes/Desktop/Random Data.csv") #create a CSV of the data
