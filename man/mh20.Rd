\name{mh20}
\alias{mh20}
\title{Function to return the MH20 hydrologic indicator statistic for a given data frame}
\usage{
  mh20(x, drainarea, pref = "mean")
}
\arguments{
  \item{x}{data frame containing a "discharge" column
  containing daily flow values}

  \item{drainarea}{numeric value of drainage area for a
  site}

  \item{pref}{string containing a "mean" or "median"
  preference}
}
\value{
  mh20 numeric value of MH20 for the given data frame
}
\description{
  This function accepts a data frame that contains columns
  named "discharge" and "year_val" and calculates MH20,
  specific mean annual maximum flow. MH20 is the mean (or
  median-Use Preference option) of the annual maximum flows
  divided by the drainage area (cubic feet per
  second/square mile-temporal).
}
\examples{
qfiletempf<-sampleData
drainarea<-56.5
mh20(qfiletempf,drainarea)
}

