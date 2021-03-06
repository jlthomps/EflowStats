\name{tl1.2}
\alias{tl1.2}
\title{Function to return the TL1 and TL2 hydrologic indicator statistics for a given data frame}
\usage{
  tl1.2(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  tl1.2 list containing TL1 and TL2 for the given data
  frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates TL1; Julian date of
  annual minimum. Determine the Julian date that the
  minimum flow occurs for each water year. Transform the
  dates to relative values on a circular scale (radians or
  degrees). Compute the x and y components for each year
  and average them across all years. Compute the mean angle
  as the arc tangent of y-mean divided by x-mean. Transform
  the resultant angle back to Julian date (Julian
  day-spatial). and TL2; Variability in Julian date of
  annual minima. Compute the coefficient of variation for
  the mean x and y components and convert to a date (Julian
  day-spatial).
}
\examples{
qfiletempf<-sampleData
tl1.2(qfiletempf)
}

