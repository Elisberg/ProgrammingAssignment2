## Put comments here that give an overall description of what your
## functions do

## Cahces the inverse of the matrix and returns the result.

makeCacheMatrix <- function(x = matrix()) {
  chacheInverse <- solve(x)  
}


## In  case the two matrices x and the global cacheMatrix - defined outside the scope of the function
## are not equal the inverse of the matrix will be calculated and stored in the global variable cacheMatrix
## otherwise the cache is returned

cacheSolve <- function(x, ...) {
  if (!identical(x, cacheMatrix)) {
    cacheMatrix <<- makeCacheMatrix(x)
  }
  
  return(cacheMatrix)  
}
