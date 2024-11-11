makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL
  

  set <- function(y) {
    x <<- y  # Assign the input matrix to the variable 'x'
    inv <<- NULL  # Reset the inverse cache when matrix is set
  }

  get <- function() x

  setInverse <- function(inverse) inv <<- inverse

  getInverse <- function() inv

  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
