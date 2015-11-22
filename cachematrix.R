makeCacheMatrix <- function(initial_matrix = matrix()) {
    # initialize the inverse matrix
    inverse_matrix <- NULL
    
    # set the initial matrix
    set <- function(y) {
        initial_matrix <<- y
        inverse_matrix <<- NULL
    }
    
    # get the initial matrix
    get <- function() {
        return(initial_matrix)
    }
    
    # set the inverse matrix
    setInverseMatrix <- function(inv_mtx) {
        inverse_matrix <<- inv_mtx
    }
    
    # get the inverse matrix
    getInverseMatrix <- function() {
        return(inverse_matrix)
    }
    
    # return a list with setter and getter functions for both the initial matrix and the inverse matrix
    return(list(set = set, get = get, setInverseMatrix = setInverseMatrix, getInverseMatrix = getInverseMatrix))
}
