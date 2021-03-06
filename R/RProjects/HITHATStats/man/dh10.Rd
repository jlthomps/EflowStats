\name{dh10}
\alias{dh10}
\title{Function to return the DH10 hydrologic indicator statistic for a given data frame}
\usage{
  dh10(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  dh10 numeric containing the variability of the annual
  maximum 90-day moving average flow for the given data
  frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates the variability of the
  annual maximum 90-day moving average flow for the entire
  record
}
\examples{
load_data<-paste(system.file(package="HITHATStats"),"/data/obs_data.csv",sep="")
qfiletempf<-read.csv(load_data)
dh10(qfiletempf)
}

