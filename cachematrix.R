## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
get<-function()x
#put the cached value into x
setinverse<-function(inverse) m<<- inverse
#return m
getinverse<-function()m
list(set=set,
     get=get,
     setinverse=setinverse,
     getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinverse()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
  #if this is excuted, it means inverse is not calculated
  data<-x$get()
  m<-solve(data)%*%data
  x$setinverse(m)
  #return result
  m
}
