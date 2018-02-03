# caching the Inverse of a Matrix in the R language - assignment 2

This project provides a simple way of creating a special class that can cache a matrix and its inverse.
The inverse of the matrix is cached to avoid having to repeat this costly computation.
The special matrix exposes getters and setters to access the cached matrix and its cached inverse.

## Getting Started

You know the deal; fork this repository to your github account and clone it to your local environment.

1. Fork the GitHub https://github.com/waperez73/ProgrammingAssignment2

2. Clone the project to your local account
  
    - git clone https://github.com/[your github account]/ProgrammingAssignment2
    
### Prerequisites

You will need to download the latest version of R (this was developed using R version 3.4.3 (2017-11-30)).

You can download R here: 

Windows: https://cran.r-project.org/bin/windows/base/

Mac OSx: https://cran.r-project.org/bin/macosx/

If you really feel adventurous download RStudio fora more complete development environment.

https://www.rstudio.com/products/rstudio/download/#download

### Installing

1. Install R and make sure it is working
2. Install Rtudio - if you feel you need it

## Running the tests

1. Change your working directory in R to where the project is cloned in your local system
    
    - setwd("c:/coursera/projects/ProgrammingAssignment2")
    - run the dir() commands to verify
    
2. Source the file cachematrix.R
  
    - source("cachematrix.R")
    - run the ls() command to verify 
  
  If the source() command returns an error repeat step 1.

3. Create your matrix and save the special matrix object in a variable
    
    > m<-makeCacheMatrix(matrix(rnorm(20),4,4))
    > cacheSolve(m)

    - Calling the cachesolve(m) returns the inverse of the matrix  (assuming the matrix is inversible)
                  [,1]       [,2]        [,3]      [,4]
      [1,] -12.8613362 -13.882941   7.8381458 -6.949864
      [2,]   0.2339627   1.855456  -0.1921917  1.067387
      [3,]  -9.7025174  -8.863176   6.1846731 -6.000537
      [4,]  23.4755923  31.258603 -15.9312600 12.768391
 
4. You can also access the special matrix by using the getters and setters 
  
  > m$get() - returns the original matrix
  > m$set(matrix(rnorm(20),4,4)) - sets the value of the cached matrix
  > m$setMSolve(matrix()) - set the inverse of the matrix
  > m$getMSolve() - get the inverse of the matrix

## Contributing

[https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)

## Versioning
  
  version 0.1

## Authors

Wellintton Perez with help from RD Peng (https://github.com/rdpeng/)


## License

Use it at you own risk this is code from a novice R programmer

## Acknowledgments

[https://github.com/rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2)
