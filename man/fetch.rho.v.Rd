\name{fetch.rho.v}
\alias{fetch.rho.v}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to transform \eqn{var(\theta)} back to \eqn{var(\rho)}
%%  ~~function to do ... ~~
}
\description{
	The model has a correlation parameter which is estimated and theoretically bound between -1 and +1. To ensure that the estimated parameters are within the theoretical bounds a transformation is necessary. The chosen transformation is:\cr
	
	\deqn{f(\rho): \rho = \frac{2}{(1-exp(-\theta))}- 1}{f(\rho): \rho = 2/(1-exp(-\theta))- 1} 
	
Whereas \eqn{\rho} is the actual correlation coefficient and \eqn{\theta} is the parameter we estimate in the model. This parametrization has been worked into the likelihood function and ensures that \eqn{\rho} will be between \eqn{-1} and \eqn{+1}.

The variance covariance matrix thus contains entries based on \eqn{\theta} but not \eqn{\rho}. Hence, this function takes the variance of the transformed correlation parameter (\eqn{\theta}) and produces the value correct for \eqn{\rho}.

	To create the correct measure of \eqn{var(\rho)} this function simulates 1,000 \eqn{\theta}'s and then transforms them to \eqn{\rho}'s. The variance of these \eqn{\rho}'s is then reported. Note, this means that the variance-covariance returned by \code{StratSel} is only correct for all diagonals and off-diagonals for the parameters (\eqn{\beta}) but for the correlation coefficient only the variance is correct. Given that there is no reason to use the full variance-covariance for post-estimation commands this is not a problem.
}
\usage{
fetch.rho.v(v, b)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{v}{Variance-covariance matrix based on the regular parameters (\eqn{\beta}) and  \eqn{\theta}.
%%     ~~Describe \code{v} here~~
}
  \item{b}{Coefficient vector, first \eqn{n} elements are for the regular parameter estimates and the last element is \eqn{\theta}.
%%     ~~Describe \code{b} here~~
}
}
\details{This function is for internal use but documented as a regular function to enable any user to assess the estimator and its functionality.
	}

\value{Returns the correct variance estimate for the estimate of the correlation coefficient \eqn{\rho}.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{
	Lucas Leemann  \email{lleemann@gmail.com}
%%  ~~who you are~~
}

\seealso{
\code{\link{StratSel}}
}
\examples{
fetch.rho.v(matrix(c(1,0,0,1),2,2),c(0,0))
fetch.rho.v(matrix(c(1,0,0,2),2,2),c(0,0))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{transformation}
\keyword{correlation coefficient}% __ONLY ONE__ keyword per line
