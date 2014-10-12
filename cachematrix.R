## makeCacheMatrix starts a cache to store a matrix and its inverse
## cachesolve returns a matrix that is the inverse of x

## this function is to store a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
	 inverse <- NULL
	 set <- function(y) {
		x<<-y
		inverser<<-NULL
	 }
	 get <- function() x
	 setinv <- function(inv) inverse <<- inv
	 getinv <- function() inverse
	 list(set = set, get = get,setinv = setinv,getinv = getinv)
}


## The following function looks up the inverse of the matrix.
## if it does not exist it finds out using solve(x) and setting the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinv()
	if(!is.null(inv)){
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	inv <- solve(data, ...)
	x$setinv(inv)
	inv 
	
}
