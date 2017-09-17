## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                varInverse<- NULL
        set<- function(y){
                x<<-y
                varInverse<<-NULL
        }
        
        get <- function() x
        setinverse <- function(inverse) varInverse <<- inverse
        
        getinverse <- function() varInverse
        
        list( set = set, get = get, setinverse = setinverse , getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
                varInverse <- x$getinverse()
        if(!is.null(varInverse)) {
                message("getting cached data.")
                return(varInverse)
        }
        dataInverse <- x$get()
        varInverse <- solve(dataInverse)
        x$setinverse(varInverse)
        varInverse
}
