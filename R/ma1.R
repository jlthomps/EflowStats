#' Function to return the MA1 hydrologic indicator statistic for a given data frame
#' 
#' This function accepts a data frame that contains a column named "discharge" and 
#' calculates the mean of the daily flow values for the entire record (cubic feet per second)
#' 
#' @param x data frame containing a "discharge" column containing daily flow values
#' @return ma1 numeric value of the mean daily flow for the given data frame
#' @export
#' @examples
#' qfiletempf<-sampleData
#' ma1(qfiletempf)
ma1 <- function(x) {
  ma1 <- mean(x$discharge,na.rm=TRUE)
  return(ma1)
}