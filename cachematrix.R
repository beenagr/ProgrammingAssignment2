## This function initializes matrix, set the function environment.
## Sets the value of matrix and get the value of matrix.
## Sets the value of inverse and get the value of inverse.

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <- function(y){
    x<<- y
    m<<- NULL
  }
  
  get <-function(){
    return(x)
  }
  setinverse <-function(inverse){
    m <<-inverse
  }
  
  getinverse <- function(){
    return(m)
  }
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


##This function retuns a matrix that is the inverse of x
## This function calculates the inverse of the marrix created in the above funtion.
## It first checks to see if the inverse has already been calculated
## If so, it gets the inverse and skips computation.
## Otherwise, it calculates the inverse of the matrix and sets the value of 
## inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(is.null(m){
    message("getting cached data")
    return(m)
  }
  else{
    data <-x$get()
    m <-inverse(data, ...)
    x$setinverse(m)
    return(m)
  }
}
