\name{dl6}
\alias{dl6}
\title{Function to return the DL6 hydrologic indicator statistic for a given data frame}
\usage{
  dl6(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  dl6 numeric containing DL6 for the given data frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates DL6; Variability of
  annual minimum daily average flow. Compute the standard
  deviation for the minimum daily average flow. DL6 is 100
  times the standard deviation divided by the mean
  (percent-spatial).
}
\examples{
qfiletempf<-sampleData
dl6(qfiletempf)
}

