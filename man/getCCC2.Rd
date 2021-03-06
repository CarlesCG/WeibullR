\name{getCCC2}
\alias{getCCC2}

\title{Determination of the square of the "Critical Correlation Coefficient" (CCC2).}

\description{
Abernethy has promoted the 10th percentile of Correlation Coefficients generated by pivotal Monte Carlo analysis as a critical measure by which a fit should be designated suitable for further analysis.  According to his practice, the difference between the square of the Correlation Coefficient and the CCC2 (R^2 - CCC^2) is used to make comparitive judgments between weibull and lognormal fitting on the same data.
}

\usage{
getCCC2(F, model="weibull") 
}

\arguments{
  \item{F}{The quantity of complete failure data points under consideration.}
  \item{model}{A string defining the distribution under consideration. Only a value of "lnorm" will be treated any differently from default of "weibull".}

}

\details{The value returned is derived from a correlation developed from previously run pivotal analysis with 10^8 random samples.  Project "Abernethy Reliability Methods" has judged that only the CCC^2 derived from 2 parameter models to have usefullness in such analysis.  This is seen from the "Detect Power" presentations in Appendix D of "The New Weibull Handbook, Fifth Edition".  For validity of a 3rd parameter optimization on a given model over its 2 parameter fit, only the Likelihood Ratio Test will be applied.  This validity check requires an LRT-P greater than 50% in addition to caveats placed on these biased fits by Abernethy.
}

\value{
Returns a single valued vector for the square of CCC (for comparison with R squared).
}

\references{
  Robert B. Abernethy, (2008) "The New Weibull Handbook, Fifth Edition"
}

\examples{
thisCCC2<-getCCC2(50, "lnorm")
}

\keyword{ regression reliability goodness-of-fit}