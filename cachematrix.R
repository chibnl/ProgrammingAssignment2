
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## This function creates a list that set the value of the matrix, get the matrix
## set the inverse matrix and get the inverse matrix

makeCacheMatrix <- function(x = matrix()) {  #the input of this function is a matrix
  i <- NULL     
  set <- function(y){ 
    x<<-y
    i<<-NULL 
  }
  get <- function() x #get function to returns the value of the matrix
  setinverse <-function(inverse) {i<<-inverse} #set the value of the inverse matrix
  getinverse <-function() {i} #get the inverse matrix
  list(set=set, get=get,setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function
## this function inverse the matrix that is created from the makeCachematrix function
## if the inverse is already calculated, it will get the inverse from the cache
## otherwise, it will perform the solve function to retrieve the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
  i <- x$getinverse() #i is defined as the inverse matrix of x 
  if(!is.null(i)) { #if i is already calculated message will appear with value of i
    message("getting cached data")
    return(i)
  }
  data <- x$get() #get the value of matrix x
  i <- solve(data,...) #i is computed as inverse of x
  x$setinverse(i) # i is set as inverse of x
  i #return i
} 
