## Functions to calculate and cache a matrix's inverse 


## Takes matrix input and outputs a list of functions that can be 
## used to cache and retrieve a matrix inverse

makeCacheMatrix <- function(x = matrix()) {
	mat <- NULL
	set <- function(y) {
		x <<- y
		mat <<- NULL
		} 
	get <- function() x
	setmat <- function(inv) mat <<- inv
	getmat <- function() mat
	list(set = set, get = get,
     setmat = setmat,
     getmat = getmat)
}


## Checks to see if matrix inverse has already been calculated;
## if so, returns cached matrix 
## if not, calculates it and returns inverse matrix 

# argument for cacheSolve is variable where output from makeCacheMatrix is stored
cacheSolve <- function(x, ...) {
            mat <- x$getmat()
            if(!is.null(mat)) {
                    message("getting cached data")
                    return(mat)
            }
            data <- x$get()
            mat <- solve(data, ...)
            x$setmat(mat)
             ## Return a matrix that is the inverse of 'x'
            mat

       
}
