# These functions create a special "matrix" from a user supplied matrix, that 
# can be cached, and then computes the inverse. If the inverse is already
# available in cache data, it returs the cached inverse and lets the user know

cacheSolve <- function(x,...){
    ## Return a matrix that is the inverse of 'x'
    m <- x$get_inv()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
        }
    data <-x$get()
    m <-solve(data)
    x$set_inv(m)
    m
}