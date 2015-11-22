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

cacheSolve <- function(initial_matrix, ...) {
    # get the inverse matrix
    inverse_matrix <- initial_matrix$getInverseMatrix()
    
    # check whether the inverse matrix already exists in cache, and if yes, then return it
    if(!is.null(inverse_matrix)) {
        message("getting cached inverse matrix")
        return(inverse_matrix)
    }
    
    # get the initial matrix (i.e., supplied matrix)
    init_mtx <- initial_matrix$get()
    
    # compute the inverse matrix
    # (note: it is assumed that the matrix supplied is always invertible)
    inverse_matrix <- solve(init_mtx)
    
    # set the inverse matrix of the initial matrix
    initial_matrix$setInverseMatrix(inverse_matrix)
    
    # return the inverse matrix
    return(inverse_matrix)
}
