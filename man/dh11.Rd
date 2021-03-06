\name{dh11}
\alias{dh11}
\title{Function to return the DH11 hydrologic indicator statistic for a given data frame}
\usage{
  dh11(qfiletempf, pref = "mean")
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}

  \item{pref}{string containing a "mean" or "median"
  preference}
}
\value{
  dh11 numeric containing DH11 for the given data frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates DH11; Annual maximum of
  1-day moving average flows divided by the median for the
  entire record. Compute the maximum of a 1-day moving
  average flow for each year. DH11 is the mean of these
  values divided by the median for the entire record
  (dimensionless-temporal).
}
\examples{
qfiletempf<-sampleData
dh11(qfiletempf)
}

