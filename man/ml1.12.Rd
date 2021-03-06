\name{ml1.12}
\alias{ml1.12}
\title{Function to return the ML1-ML12 hydrologic indicator statistics for a given data frame}
\usage{
  ml1.12(qfiletemp)
}
\arguments{
  \item{qfiletemp}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  ml1.12 data frame containing the mean or median minimum
  flows for each month
}
\description{
  This function accepts a data frame that contains columns
  named "discharge", "year_val" and "month_val" and
  calculates the Mean (or median-Use Preference option)
  minimum flows for each month across all years. Compute
  the minimum daily flow for each month over the entire
  flow record. For example, ML1 is the mean of the minimums
  of all January flow values over the entire record (cubic
  feet per second-temporal).
}
\examples{
qfiletempf<-sampleData
ml1.12(qfiletempf)
}

