\name{ra2}
\alias{ra2}
\title{Function to return the RA2 hydrologic indicator statistic for a given data frame}
\usage{
  ra2(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  ra2 numeric containing RA2 for the given data frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates RA2; Variability in rise
  rate. Compute the standard deviation for the positive
  flow changes. RA2 is 100 times the standard deviation
  divided by the mean (percent-spatial).
}
\examples{
qfiletempf<-sampleData
ra2(qfiletempf)
}

