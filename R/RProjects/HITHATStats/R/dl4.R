#' Function to return the DL4 hydrologic indicator statistic for a given data frame
#' 
#' This function accepts a data frame that contains a column named "discharge" and 
#' calculates the mean of the annual minimum 30-day average flows for the entire record
#' 
#' @param qfiletempf data frame containing a "discharge" column containing daily flow values
#' @param pref string containing a "mean" or "median" preference
#' @return dl4 numeric containing the mean of the annual minimum 30-day average flows for the given data frame
#' @export
#' @examples
#' load_data<-paste(system.file(package="HITHATStats"),"/data/obs_data.csv",sep="")
#' qfiletempf<-read.csv(load_data)
#' dl4(qfiletempf)
dl4 <- function(qfiletempf, pref = "mean") {
  day30mean <- rollmean(qfiletempf$discharge, 30, align = "right", 
                        na.pad = TRUE)
  day30rollingavg <- data.frame(qfiletempf, day30mean)
  rollingavgs30day <- subset(day30rollingavg, day30rollingavg$day30mean != 
                               "NA")
  min30daybyyear <- aggregate(rollingavgs30day$day30mean, 
                              list(rollingavgs30day$wy_val), min, na.rm=TRUE)
  if (pref == "median") {
    dl4 <- median(min30daybyyear$x)
  }
  else {
    dl4 <- mean(min30daybyyear$x)
  }
  return(dl4)
}