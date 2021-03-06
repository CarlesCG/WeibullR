\name{mleframe}
\alias{mleframe}

\title{Set life(time) data into the format required by mlefit}

\description{
Validate input data by types and build a dataframe to be used as the primary argument object to mlefit
}

\usage{
mleframe(x, s=NULL, interval=NULL) 
}

\arguments{
  \item{x}{An expected vector of failure data. Alternative support is provided for a dataframe holding time and event columns,
  where event markers for failure occurrences are 1 and suspensions (right censored data) are 0.}
  \item{s}{An optional vector of suspension data.}
  \item{interval}{A dataframe holding interval bounds for failure data in columns named 'left' and 'right'.
  The left(early) interval bound for left-censored data must be entered as zero (NA is not accepted).
  An optional column named 'qty' may contain the integer quantity of data entries having same interval values.}  
}


\value{
Returns a dataframe of the life[time] data in columns named 'left', 'right', and 'qty' with an attribute of fsiq set to TRUE.
  Exact failure data (occurrences) have same time entered in both 'left' and 'right' columns.  
  Suspension data has last known life[time] entered in 'left' column and -1 entered in 'right' column.  
  The interval dataframe argument is appended.  The 'qty' field is populated with a value of 1 for all failure
  and suspension entries and interval rows where qty was not provided. 
}

\references{
  Robert B. Abernethy, (2008) "The New Weibull Handbook, Fifth Edition" 
}

\examples{
fail<-c(10,40,40,50)
susp<-c(20,60)
left<-c(0,0,0,20,10)
right<-c(30,70,100,80,85)
qty<-c(2,1,1,2,1)
interval_ex<-data.frame(left,right,qty)
input_frame<-mleframe(fail,susp,interval_ex)
}

\keyword{ interval }