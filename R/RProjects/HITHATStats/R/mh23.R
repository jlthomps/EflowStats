#' Function to return the MH23 hydrologic indicator statistic for a given data frame
#' 
#' This function accepts a data frame that contains a column named "discharge" and 
#' calculates MH23. High flow volume. Compute the average volume for flow events above a threshold equal 
#' to seven times the median flow for the entire record. MH23 is the average volume divided by the 
#' median flow for the entire record.
#' 
#' @param x data frame containing a "discharge" column containing daily flow values
#' @return mh23 numeric value of the average volume of threshold event divided by median flow for the given data frame
#' @export
#' @examples
#' load_data<-paste(system.file(package="HITHATStats"),"/data/obs_data.csv",sep="")
#' x<-read.csv(load_data)
#' mh23(x)
mh23 <- function(x) {
  thresh <- 7*ma2(x)
  nevents <- 0
  flag <- 0
  total <- 0
  for (i in 1:nrow(x)) {
    temp <- x$discharge[i]-thresh
    if (temp>0) {
      total <- total + temp
      flag <- flag+1
      nevents <- ifelse(flag==1,nevents+1,nevents)
    } else {flag <- 0}
  }
  avg_ex <- total/nevents
  mh23 <- avg_ex/ma2(x)
  return(mh23)
}