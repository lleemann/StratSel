\name{fetch.rho.b}
\alias{fetch.rho.b}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to transform f(\eqn{\rho}) back to \eqn{\rho}
%%  ~~function to do ... ~~
}
\description{The model has a correlation parameter which is estimated and theoretically bound between -1 and +1. To ensure that the estimated parameters are within the theoretical bounds a transformation is necessary. The chosen transformation is:\cr
	
  \deqn{f(\rho): \rho = \frac{2}{(1-exp(-\theta))}- 1}{f(\rho): \rho = 2/(1-exp(-\theta))- 1} 
	
Whereas \eqn{\rho} is the actual correlation coefficient and \eqn{\theta} is the parameter we estimate in the model. This parametrization has been worked into the likelihood function and ensures that \eqn{\rho} will be between \eqn{-1} and \eqn{+1}.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
fetch.rho.b(b)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{b}{ The vector of estimated coefficients (\eqn{\beta}) whereas the last element is the transformed correlation coefficient (here: \eqn{\theta}).
%%     ~~Describe \code{b} here~~
}
}
\details{
This function is for internal use but documented as a regular function to enable any user to assess the estimator and its functionality.
}
\value{The function returns the correct estimate for \eqn{\rho}.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
%\references{
%% ~put references to the literature/web site here ~
%}
\author{
	Lucas Leemann  \email{lleemann@gmail.com}
%%  ~~who you are~~
}
\note{We want to estimate \eqn{\rho} but because it is theoretically bound, we estimate \eqn{\theta} which is not bound can range from \eqn{-\infty} to \eqn{+\infty}.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{ 
	\code{\link{StratSel}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
test <- c(1,1,-2.35)
fetch.rho.b(test)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{transformation}
\keyword{correlation coefficient}% __ONLY ONE__ keyword per line
