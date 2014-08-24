## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(),...) {
        
        z <- NULL
        set<- function(y){
                x<<- y
                z<<- NULL
        }
        
        get<- function()
                x

        setinverse <- function(solve) z<<- solve 
        getmat<- function() z
                
        list(set = set ,get = get, setinverse = setinverse, getmat = getmat)
        

}

## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'

        z <- x$getmat()
        if(is.null(z)) {
                message("getting cached data")
                return(z)
        }
        matrix <- x$get()
        z <- solve(matrix, ...)
        x$setinverse(z)
        z
}




