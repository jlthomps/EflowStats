#' Function to return the DH2 hydrologic indicator statistic for a given data frame
#' 
#' This function accepts a data frame that contains a column named "discharge" and 
#' calculates the mean of the annual maximum 3-day moving average flow for the entire record
#' 
#' @param qfiletempf data frame containing a "discharge" column containing daily flow values
#' @param pref string containing a "mean" or "median" preference
#' @return dh2 numeric containing the mean of the annual maximum 3-day moving average flow for the given data frame
#' @export
#' @examples
#' load_data<-paste(system.file(package="HITHATStats"),"/data/obs_data.csv",sep="")
#' qfiletempf<-read.csv(load_data)
#' dh2(qfiletempf)
dh2 <- function(qfiletempf, pref = "mean") {
  day3mean <- rollmean(qfiletempf$discharge, 3, align = "right", 
                       na.pad = TRUE)
  day3rollingavg <- data.frame(qfiletempf, day3mean)
  rollingavgs3day <- subset(day3rollingavg, day3rollingavg$day3mean != 
                              "NA")
  max3daybyyear <- aggregate(rollingavgs3day$day3mean, 
                             list(rollingavgs3day$wy_val), max, na.rm=TRUE)
  if (pref == "median") {
    dh2 <- median(max3daybyyear$x)
  }
  else {
    dh2 <- mean(max3daybyyear$x)
  }
  return(dh2)
}