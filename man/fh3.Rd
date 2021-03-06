\name{fh3}
\alias{fh3}
\title{Function to return the FH3 hydrologic indicator statistic for a given data frame}
\usage{
  fh3(qfiletempf, pref = "mean")
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}

  \item{pref}{string containing a "mean" or "median"
  preference}
}
\value{
  fh3 numeric value of FH3 for the given data frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates FH3; High flood pulse
  count. Compute the average number of days per year that
  the flow is above a threshold equal to three times the
  median flow for the entire record. FH3 is the mean (or
  median-Use Preference option) of the annual number of
  days for all years (number of days/year-temporal).
}
\examples{
qfiletempf<-sampleData
fh3(qfiletempf)
}

