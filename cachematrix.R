## These two functions here are able to create and store a new matrix on the cche memory.

## To create the matrix we can use a function like this one


makeCacheMatrix <- function(x = matrix()) {
 mtxinv <- NULL
  setmtx <- function(m) {
    x <<- m
    mtxinv <<- NULL
  }
  getmtx <- function() x
  setinvmtx <- function(inverse) mtxinv <<- inverse
  getinvmtx <- function() mtxinv
  list(setmtx = setmtx, getmtx = getmtx, setinvmtx = setinvmtx, getinvmtx = getinvmtx)
}


## To solve the matrix previously created we can use the next function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mtxinv <- x$getinvmtx()
  if(!is.null(mtxinv)) {
    message("getting result")
    return(mtxinv)
  }
  data <- x$getmtx()
  mtxinv <- solve(data, ...)
  x$setinvmtx(mtxinv)
  mtxinv
}
