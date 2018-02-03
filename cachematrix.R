######################################################################################
# Description: the function takes a single parameter containing a matrix.  The matrix
# is cached in global memory.   
#
# Class: makeCacheMatrix(matrix())
# Methods:
#             $set(matrxi()) - set value of the matrix
#             $get() - gets the value of the matrix
#             $setMSolve(matrix()) - set the inverse of the matrix
#             $getMSolve() - get the inverse of the matrix
#
# Interface:  cacheSolve(makeCacheMatrix())
#
#Author: Wellintton Perez 2018
#
######################################################################################
makeCacheMatrix <- function(matrx=matrix()) {
  matrix_solved=cache_matix<- NULL
  
  set <- function(matrx) {
    cache_matix <<- matrx
    matrix_solved <<- NULL
  }
  get <- function() cache_matix
  
  setMSolve <- function(x) matrix_solved <<- x
  getMSolve <- function() matrix_solved
  
  if(!all(is.na(matrx)))
    set(matrx)#initialize the matrix
  
  list(set = set, get = get,
       setMSolve = setMSolve,
       getMSolve = getMSolve)
  

}

cacheSolve <- function(x, ...) {
  
  matrix_solve <- x$getMSolve()
  
  if(!is.null(matrix_solve)) {
    message("getting cached data")
    return(matrix_solve)
  }
  
  data <- x$get()
  if(!is.null(data))
    matrix_solve <- solve(data, ...)
  else
    stop("matrix is null")
  
  x$setMSolve(matrix_solve)
  
  matrix_solve
}
