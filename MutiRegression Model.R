#Loading the necessary Libraries
library(lattice)
library(psych)


#viewing the dataset
MultiRegDataset

#viewing the key stats of the dataset
summary(MultiRegDataset)

#Basic Statistics of dataset
describe(MultiRegDataset)


#Generating Expenses Histogram
x=MultiRegDataset$expenses
h<-hist(x, breaks=10, col="yellow", xlab="Expenses",main="Expenses")


#Performing the t-test
t.test(MultiRegDataset$expenses, mu = 10000)

#Simple linear regression 
simple.fit<-lm(expenses~smoker, data=MultiRegDataset)
LinearModel<-simple.fit

#Summary of key statistics of the model
summary(LinearModel)


#Multiple Regression Model
multimodel <-lm(expenses~., data = MultiRegDataset)
summary(multimodel)