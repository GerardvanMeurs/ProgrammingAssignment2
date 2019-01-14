setwd("G:/Coursera Training/6. R Programming/Assignment2/ProgrammingAssignment2")
source("cachematrix.R")

# create square 5 by 5 matrix; not sure whether it is invertible
mat <- matrix(sample(1:25), 5, 5)
# use solve() to create inverse
solve(mat)


# creating special matrix
my_matrix <- makeCacheMatrix(mat)
# print matrix
my_matrix$get()
# retrieve cached inverse; not yet available: NULL
my_matrix$getInverse()
# check whether inverse is cached; 1st time not yet
cacheSolve(my_matrix)
# check whether inverse is cached; 2nd time: yes
cacheSolve(my_matrix)
# check whether inverse is cached; 3rd time: yes
cacheSolve(my_matrix)
# retrieve cached inverse; available
my_matrix$getInverse()