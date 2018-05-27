\name{war1800}
\alias{war1800}
\docType{data}
\title{A Data Set for Illustrative Purposes
%%   ~~ data name/kind ... ~~
}
\description{This is a subset (only some variables included) of the data set which is also included in the package \code{games}. The data set can also be used to replicate the example that is provided in Leemann (2014) illustrating the strategic selection estimator. It is a data set of militarized international disputes between 1816 and 1899.

%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(war1800)}
\format{
  A data frame with 313 observations on the following 10 variables.
  \describe{
    \item{\code{esc}}{a numeric vector}
    \item{\code{war}}{a numeric vector}
    \item{\code{dem1}}{a numeric vector}
    \item{\code{mixed1}}{a numeric vector}
    \item{\code{dem2}}{a numeric vector}
    \item{\code{mixed2}}{a numeric vector}
    \item{\code{s_wt_re1}}{a numeric vector}
    \item{\code{revis1}}{a numeric vector}
    \item{\code{balanc}}{a numeric vector}
    \item{\code{Y}}{a numeric vector}
  }
}

\source{
This data set is taken from the package \code{games}. 
}
\references{
	
	  Daniel M. Jones, Stuart A. Bremer and J. David Singer.
  1996. "Militarized Interstate Disputes, 1816-1992:
  Rationale, Coding Rules, and Empirical Patterns."
  \emph{Conflict Management and Peace Science} 15(2):
  163--213.
  
  	Lucas Leemann. 2014. "Strategy and Sample Selection - A Strategic Selection Estimator", forthcoming in \emph{Political Analysis}.
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(war1800)
summary(war1800)
}
\keyword{Data war1800}
