## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix stores values for the matrix and inverse
makeCacheMatrix <- function(x = matrix()) {
	my_matrix<- x  
	my_inverse<- NULL
	
	get<- function() {
		my_matrix  
	}
	set<- function(x) {
		my_matrix<<-x
	}
	set_inverse<- function(x) {
		my_inverse<<- x
	}
	get_inverse<- function() {
		my_inverse
	}
	list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}

## cacheSolve caching the inverse matrix of type makeCacheMatrix
## provide instantiated makeCacheMatrix as x

cacheSolve <- function(x, ...) {
	inv<- x$get_inverse() 
	if (is.null(inv)) { 
		m<- x$get() 
		inv<- solve(m) 
		x$set_inverse(inv) 
	}
	return(x$get_inverse()) 
}
