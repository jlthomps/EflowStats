\name{dl9}
\alias{dl9}
\title{Function to return the DL9 hydrologic indicator statistic for a given data frame}
\usage{
  dl9(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  dl9 numeric containing DL9 for the given data frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates DL9; Variability of
  annual minimum of 30-day moving average flow. Compute the
  standard deviation for the minimum 30-day moving
  averages. DL9 is 100 times the standard deviation divided
  by the mean (percent-spatial).
}
\examples{
qfiletempf<-sampleData
dl9(qfiletempf)
}

