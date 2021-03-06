\name{dh8}
\alias{dh8}
\title{Function to return the DH8 hydrologic indicator statistic for a given data frame}
\usage{
  dh8(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  dh8 numeric containing DH8 for the given data frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates DH8; Variability of
  annual maximum of 7-day moving average flows. Compute the
  standard deviation for the maximum 7-day moving averages.
  DH8 is 100 times the standard deviation divided by the
  mean (percent-spatial).
}
\examples{
qfiletempf<-sampleData
dh8(qfiletempf)
}

