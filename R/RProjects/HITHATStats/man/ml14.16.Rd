\name{ml14.16}
\alias{ml14.16}
\title{Function to return the ML14-ML16 hydrologic indicator statistics for a given data frame}
\usage{
  ml14.16(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  ml14.16 list of ml14-ml16 for the given data frame
}
\description{
  This function accepts a data frame that contains columns
  named "discharge" and "year_val" and calculates ML14; the
  minimum annual flow for each year. ML14 is the mean of
  the ratios of minimum annual flows to the median flow for
  each year. ML15; Low flow index. ML15 is the mean of the
  ratios of minimum annual flows to the mean for for each
  year. ML16; Median of annual minimum flows. ML16 is the
  median of the ratios of minimum annual flows to the
  median flow for each year.
}
\examples{
load_data<-paste(system.file(package="HITHATStats"),"/data/obs_data.csv",sep="")
qfiletempf<-read.csv(load_data)
ml14.16(qfiletempf)
}

