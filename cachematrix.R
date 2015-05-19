## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        
        #Method to set matrix
        set <- function(y){
                x <<- y
                inverse <<- NULL 
        }

        #Method to get matrix
        get <- function(){
                #Return the matrix
                x
        }
        
        #Method to set the inverse of the matrix
        setInverse <- function(i){
                inverse <- i
        }
        
        #Method to get the inverse of the matrix
        getInverse <- function(){
                #Return the inverse
                inverse
        }
        
        # Return a list of the methods
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        matrixM <- xget$Inverse()
        
        #Return inverse if already calculated
        if(!is.null(matrixM)){
                message("getting cached matrix")
                return(matrixM)
        }

        #Calculate inverse
        data <- x$get()
        matrixM <- solve(data)
        
        #Set the inverse
        x$setInverse(matrixM)
        
        #Return the inverse
        matrixM
}
