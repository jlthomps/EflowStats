\name{dh1}
\alias{dh1}
\title{Function to return the DH1 hydrologic indicator statistic for a given data frame}
\usage{
  dh1(qfiletempf, pref = "mean")
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}

  \item{pref}{string containing a "mean" or "median"
  preference}
}
\value{
  dh1 numeric containing DH1 for the given data frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates DH1; Annual maximum
  daily flow. Compute the maximum of a 1-day moving average
  flow for each year. DH1 is the mean (or median-Use
  Preference option) of these values (cubic feet per
  second-temporal).
}
\examples{
qfiletempf<-sampleData
dh1(qfiletempf)
}

