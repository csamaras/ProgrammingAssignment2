### Synopsis: Caching the Inverse of a Matrix

A pair of functions (`makeCacheMatrix` and `cacheSolve`) that compute and cache the inverse of a matrix. It is assumed that the matrix supplied is always invertible.

### Code Example

```
m <- makeCacheMatrix(matrix(data = c(2, 2, 3, 2), nrow = 2, ncol = 2))

m$get()

m$getInverseMatrix()

cacheSolve(m)

m$getInverseMatrix()

cacheSolve(m)
```

### Motivation

Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse of a matrix rather than computing it repeatedly.
