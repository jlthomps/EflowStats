#' Function to return the DH18 hydrologic indicator statistic for a given data frame
#' 
#' This function accepts a data frame that contains a column named "discharge" and 
#' calculates the mean average pulse duration for each year of flow above 3*median flow for the entire record
#' 
#' @param qfiletempf data frame containing a "discharge" column containing daily flow values
#' @return dh18 numeric containing the mean duration of high pulse flow for the given data frame
#' @export
#' @examples
#' load_data<-paste(system.file(package="HITHATStats"),"/data/obs_data.csv",sep="")
#' qfiletempf<-read.csv(load_data)
#' dh18(qfiletempf)
dh18 <- function(qfiletempf) {
  lfcrit <- median(qfiletempf$discharge)*3
  noyears <- aggregate(qfiletempf$discharge, list(qfiletempf$wy_val), 
                       FUN = median, na.rm=TRUE)
  colnames(noyears) <- c("Year", "momax")
  noyrs <- length(noyears$Year)
  dur <- data.frame(Year = rep(0,nrow(qfiletempf)), dur = rep(1,nrow(qfiletempf)))
  nevents <- 0
  for (i in 1:noyrs) {
    subsetyr <- subset(qfiletempf, as.numeric(qfiletempf$wy_val) == noyears$Year[i])
    flag <- 0
    for (j in 1:nrow(subsetyr)) {
      if (subsetyr$discharge[j]>lfcrit) {
        flag <- flag+1
        nevents <- ifelse(flag==1,nevents+1,nevents)
        dur$Year[nevents] <- subsetyr$wy_val[j]
        dur$dur[nevents] <- dur$dur[nevents]+1
      } else {flag <- 0}
    }
  }
  subset_dur <- dur[1:nevents ,]
  meanbyyr <- aggregate(subset_dur$dur, list(subset_dur$Year), mean)
  colnames(meanbyyr) <- c("Year", "num_mean")
  if (nrow(meanbyyr)>0) {
  dh18 <- mean(meanbyyr$num_mean) 
  } else { dh18<-'NA'}
  return(dh18)
}