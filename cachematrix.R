## The R file consists of 2 functions, it calucates the inverse of the fucntion and stores it

## makeCacheMatrix function accepts a matrix (I have put return arguments for few validations)
## when called it stores the matrix and its cached inverse in list


makeCacheMatrix <- function(x = matrix(),...) {
        
        ##Initializaing the value of the matrix
        z <- NULL
        set<- function(y){
## Set the values of x and z in Global Env , so that to acces ooutside this function
                x<<- y 
                z<<- NULL
        }
        
        get<- function()
                x
        ## Set the Inverse of Matric locally
        setinverse <- function(solve) z<<- solve 
        getmat<- function() z
        ## Store all the values in list for local access                
        list(set = set ,get = get, setinverse = setinverse, getmat = getmat)
        

}

## This funtion will return the  cached inverse of the matrix if available,
## else it will inverse the original matrix and retrun it.

cacheSolve <- function(x=matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Access prevous function to get the value of matrix, 
        ##if not NULL then return inveretd matrix 
        ##else get the original matrtix from global values and invert
        z <- x$getmat() 
        if(!is.null(z)) {
                message("getting cached data")
                return(z)
        }
        matrix <- x$get()
        z <- solve(matrix, ...)  ## Gets the inverse of the matrix
        x$setinverse(z)
        z ## return the matrix after inverting from global value
}




