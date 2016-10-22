## Put comments here that give an overall description of what your

## Milton Esquivel 
##Example: Caching the Mean of a Vector
# In this example we introduce the <<- operator which can be used to assign a value to an object in an environment that is different from the current environment. Below are two functions that are used to create a special object that stores a numeric vector and caches its mean.
# 
# The first function, makeVector creates a special "vector", which is really a list containing a function to
# 
# set the value of the vector
# get the value of the vector
# set the value of the mean
# get the value of the mean


## functions do

## Write a short comment describing this function
## Caching the Inverse of a Matrix
## This Function is an inversion that normally computest the
# Caching Inverse of a Matrix rather than compute it repeatedly.

##How htis funcitons works it creastes a special Matrix object that
# it caches its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
        

}


## Write a short comment describing this function

## This function computes the inverse of the special 
##"matrix"  
##If the inverse has already been calculated then
##the the matrix hasn't changed),

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}


