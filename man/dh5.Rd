\name{dh5}
\alias{dh5}
\title{Function to return the DH5 hydrologic indicator statistic for a given data frame}
\usage{
  dh5(qfiletempf, pref = "mean")
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}

  \item{pref}{string containing a "mean" or "median"
  preference}
}
\value{
  dh5 numeric containing DH5 for the given data frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates DH5; Annual maximum of
  90-day moving average flows. Compute the maximum of a
  90-day moving average flow for each year. DH5 is the mean
  (or median-Use Preference option) of these values (cubic
  feet per second-temporal).
}
\examples{
qfiletempf<-sampleData
dh5(qfiletempf)
}

