## A pair of functions that cache the inverse of a matrix

## This function creates a matrix object that can cache the inverse

makeCacheMatrix <- function(x = matrix()) { 
        m <- NULL
        set <- function(matrix) {
        x <<- matrix
        m <<- NULL
}
                get <- function() 
                        {x
                }
                setsolve <- function(solve) {
                        m <<- solve}
                getsolve <- function() {
                        m}
                                        
                list(set = set, get = get,
                setsolve = setsolve,
                getsolve = getsolve)
}


## The function computes the inverse of the matrix from function above.

cacheSolve <- function(x, ...) {
        
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setsolve(m)
        m
        ## Return a matrix that is the inverse of 'x'
}

