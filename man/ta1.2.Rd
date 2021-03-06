\name{ta1.2}
\alias{ta1.2}
\title{Function to return the TA1 and TA2 hydrologic indicator statistics for a given data frame}
\usage{
  ta1.2(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
  ta1.2 list containing TA1 and TA2 for the given data
  frame
}
\description{
  This function accepts a data frame that contains a column
  named "discharge" and calculates TA1; Constancy.
  Constancy is computed via the formulation of Colwell (see
  example in Colwell, 1974). A matrix of values is compiled
  where the rows are 365 (no February 29th) days of the
  year and the columns are 11 flow categories. The cell
  values are the number of times that a flow falls into a
  category on each day. The categories are: log(flow) < 0.1
  ? log(mean flow), 0.1 ? log(mean flow) ??? log(flow) <
  0.25 ? log(mean flow) 0.25 ? log(mean flow) ??? log(flow)
  < 0.5 ? log(mean flow) 0.5 ? log(mean flow) ??? log(flow)
  < 0.75 ? log(mean flow) 0.75 ? log(mean flow) ???
  log(flow) < 1.0 ? log(mean flow) 1.0 ? log(mean flow) ???
  log(flow) < 1.25 ? log(mean flow) 1.25 ? log(mean flow)
  ???log(flow) < 1.5 ? log(mean flow) 1.5 ? log(mean flow)
  ??? log(flow) < 1.75 ? log(mean flow) 1.75 ? log(mean
  flow) ??? log(flow) < 2.0 ? log(mean flow) 2.0 ?log(mean
  flow) ??? log(flow) < 2.25 ? log(mean flow) log(flow) ???
  2.25 ? log(mean flow) The row totals, column totals, and
  grand total are computed. Using the equations for Shannon
  information theory parameters, constancy is computed as:
  1- (uncertainty with respect to state)/log (number of
  state) TA2; Predictability. Predictability is computed
  from the same matrix as constancy (see example in
  Colwell, 1974). It is computed as: 1- (uncertainty with
  respect to interaction of time and state - uncertainty
  with respect to time)/log (number of state) where
  uncertainty with respect to state =
  sum((YI_sub/Z)*log10(YI_sub/Z)) where YI_sub = the
  non-zero sums of the 11 categories and Z = the sum total
  of the Colwell matrix and where uncertainty with respect
  to time = sum((XJ_sub/Z)*log10(XJ_sub/Z)) where XJ_sub =
  the non-zero sums of the 365 days and where uncertainty
  with respect to interaction of time and state =
  sum((colwell_sub/z)*log10(colwell_sub/Z)) where
  colwell_sub = the non-zero sums of the entire matrix and
  where number of state = number of categories = 11
}
\examples{
qfiletempf<-sampleData
ta1.2(qfiletempf)
}

