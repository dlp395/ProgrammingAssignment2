## The functions returns the inverse matrix of a given matrix and store it in 
##the parent enviroment (x)
## The first function calculate the invers matrix and store it in the parent 
##environmet of the function. The second function looks for "i" in the "x" invironment, 
##if it is there there will come a message ("getting cached data") and the invers 
##matrix will be returned. In the second part of the second function, the inverse 
##matrix is calculated and stored as cache data, if it was not found in the parent 
##environment and the inverse matrix "i" is printet.

#This function calculates the inverse of a given matrix and creates a parent 
#invironment where the inverse matrix (i) is stored

makeCacheMatrix <- function(x = matrix()) { 	#Initiate the function and set x as a matrix
		i <- NULL					
		set <- function(y) {
			x <<- y
			i <<- NULL
		}
		get <- function() x
		setinv <- function(inv) i <<- solve(X)
		getinv <- function() i
		
	list( set = set, get = get, 
		setinv = setinv, 
		getinv = getinv)
}


#This function calculate and returns the invers of a specific matrix if the 
#inverse "i" is not found in the environment of "x". If the inverse matrix have already 
#been calculated the inverse will be recived from the cache. 

cacheSolve <- function(x, ...) {			
	i <- x[x$getinv()]
	if(!is.null(i)) {
		message ("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(X)
	x[x$setinv(i)]
	i       			
}