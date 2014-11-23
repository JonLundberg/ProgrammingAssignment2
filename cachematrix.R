## These functions cache the inverse of a matrix for R programming assighnment 2.

## Stores a matrix and caches the inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function (y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Calculates the inverse of a matrix, uses the cached value if available.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
            m <- x$getinverse()
            if(!is.null(m)) {
                    message("getting cached data")
                    return(m)
            }
            data <- x$get()
            m <- solve(data, ...)
            x$setinverse(m)
            m 
}
