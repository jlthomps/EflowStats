\name{ml13}
\alias{ml13}
\title{Function to return the ML13 hydrologic indicator statistic for a given data frame}
\usage{
  ml13(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  ml13 numeric value of ML13 for the given data frame
}
\description{
  This function accepts a data frame that contains columns
  named "discharge","month_val" and "year_val" and
  calculates the Variability (coefficient of variation)
  across minimum monthly flow values. Compute the mean and
  standard deviation for the minimum monthly flows over the
  entire flow record. ML13 is the standard deviation times
  100 divided by the mean minimum monthly flow for all
  years (percent-spatial).
}
\examples{
qfiletempf<-sampleData
ml13(qfiletempf)
}

