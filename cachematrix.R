## This function initializes matrix, set the function environment.

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <- function(y){
    x<<- y
    m<<- NULL
  }
  
  get <-function(){
    return(x)
  }
  setinverse <-function(y){
    m <<-y
  }
  
  getinverse <- function(){
    return(m)
  }
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


##This function retuns a matrix that is the inverse of x

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(is.null(m){
    print("getting cached data")
    return(m)
  }
  else{
    z <-x$get()
    m <-inverse(z)
    x$setinverse(m)
    return(m)
  }
}
