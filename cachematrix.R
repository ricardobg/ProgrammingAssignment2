## Put comments here that give an overall description of what your
## functions do


## This function creates a matrix with a cached inverse
makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function (matr) {
		x <<- matr
		inverse <<- NULL
	}
	get <- function () x

	getinverse  <- function () inverse
	setinverse <- function (inv) inverse <<- inv

	list(set=set,get=get,getinverse=getinverse,setinverse=setinverse)
}


## Write a short comment describing this function

## This function gets the inverse matrix. Either gets the cache or calculates (and sets the cache)
cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if (is.null(inv)) {
    	inv <- solve(x$get(), ...)
    	x$setinverse(inv)
    }
    else
    	message('getting cached data')
    inv
}
