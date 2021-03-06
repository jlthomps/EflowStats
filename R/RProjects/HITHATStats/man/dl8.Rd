\name{dl8}
\alias{dl8}
\title{Function to return the DL8 hydrologic indicator statistic for a given data frame}
\usage{
  dl8(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  dl8 numeric containing the variability of the annual
  minimum 7-day average flows for the given data frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates the variability of the
  annual minimum 7-day average flows for the entire record
}
\examples{
load_data<-paste(system.file(package="HITHATStats"),"/data/obs_data.csv",sep="")
qfiletempf<-read.csv(load_data)
dl8(qfiletempf)
}

