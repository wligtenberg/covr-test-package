# Project: covr-test-package
# 
# Author: Willem Ligtenberg - willem.ligtenberg@openanalytics.eu
###############################################################################

testedFunction <- function(x){
  # This is a tested function
  y <- x + 1
  return(y)
}

unTestedFunction <- function(x){
  # We forgot to test this function
  y <- x + 2
  return(y)
}