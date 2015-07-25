## In the below functions, we are calculating Inverse Matrix of a given Matriv and putting that in cache.
## In subsequest call, if the value is already in cache, it's returned, otherwise it's being calculated and stored in cache for future retrieval

## The following function, creates a list containing a function to
## set the value of the Matrix
## get the value of the Matrix
## set the value of the Inverse Matrix
## get the value of the Inverse Matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(mat = matrix()) m <<- mat
  getmatrix <- function() m
  list(set = set,  
       get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}



## The following function calculates the inverse matrix. It first checks to see if the Inverse Matrix has already been calculated. 
## If so, it gets the Inverse Matrix from the cache and skips the computation. 
## Otherwise, it calculates the Inverse Matric of the given Matrix and sets the value of the mean in the cache via the setmatrix function.

cacheSolve <- function(x, ...) {
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setmatrix(m)
  m
}



  
