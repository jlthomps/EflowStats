\name{getXMLWML1.1Data}
\alias{getXMLWML1.1Data}
\title{Function to return data from the NWISWeb WaterML1.1 daily values service}
\usage{
  getXMLWML1.1Data(obs_url)
}
\arguments{
  \item{obs_url}{string containing the url for the
  retrieval}
}
\value{
  Daily a data frame containing columns 'Date' and
  'Discharge'
}
\description{
  This function accepts a url parameter that already
  contains the desired NWIS site, parameter code,
  statistic, startdate and enddate. It returns a data frame
  containing "Date" and "Discharge"
}
\examples{
url<-"http://waterservices.usgs.gov/nwis/dv/?format=waterml,1.1&sites="
sites<-"02177000"
startdate<-"2012-09-01"
enddate<-"2012-10-01"
offering<-'00003'
property<-'00060'
obs_url<-paste(url,sites,'&startDT=',startdate,'&endDT=',enddate,'&statCd=',offering,'&parameterCd=',property,sep='')
getXMLWML1.1Data(obs_url)
}

