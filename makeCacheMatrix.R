# These functions create a special "matrix" from a user supplied matrix, that 
# can be cached, and then computes the inverse. If the inverse is already
# available in cache data, it returs the cached inverse and lets the user know

makeCacheMatrix <- function(x= matrix()){
    # This function creates a special matrix
    inv_mat <- NULL
    set <- function(y){
        x <<- y
        inv_mat <<- NULL
    }
    get <- function()x
    set_inv <- function(m) inv_mat <<- m
    get_inv <- function() inv_mat
    list (set = set, get = get, 
          set_inv = set_inv,
          get_inv = get_inv)
}