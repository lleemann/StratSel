\name{gen.Startval}
\alias{gen.Startval}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Generates good starting values for a strategic selection model
%%  ~~function to do ... ~~
}
\description{
The function creates good starting values based on the supplied data and model which are to be estimated. To do so, the function runs two probit models, whereas the first one is just on the lower node of the game tree (see \code{StratSel}). It then creates predicted probabilities (\eqn{p24}) to estimate a second probit at the first node whereas the variables which are part of \eqn{X14} are weighted by \eqn{p24}.
}
\usage{
gen.Startval(Startval, user.supplied.startval, corr, ys, xs11, xs14, xs24,
		dim.x11, dim.x14, dim.x24)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{Startval}{Optional. A vector of user supplied starting values.
%%     ~~Describe \code{Startval} here~~
}
  \item{user.supplied.startval}{Logical. If TRUE this function just returns the vector \code{Startval}. If the estimated model does not restrict the correlation (so \code{corr=TRUE}) then a 0 is attached to the vector \code{Startval}.
%%     ~~Describe \code{user.supplied.startval} here~~
}
  \item{corr}{Logical. Indicates whether the estimated agent error model assumes orthogonal errors (\code{=FALSE}) or whether the correlation is estimated (\code{=TRUE}).
%%     ~~Describe \code{corr} here~~
}
  \item{ys}{Vector. The outcome variable which is supplied by the user to \link{StratSel}.
%%     ~~Describe \code{ys} here~~
}
  \item{xs11}{Matrix. Explanatory variables for player 1 and measuring utility from outcome 1.
%%     ~~Describe \code{xs11} here~~
}
  \item{xs14}{Matrix. Explanatory variables for player 1 and measuring utility from outcome 4.
%%     ~~Describe \code{xs14} here~~
}
  \item{xs24}{Matrix. Explanatory variables for player 2 and measuring utility from outcome 4.
%%     ~~Describe \code{xs24} here~~
}
  \item{dim.x11}{Vector. Has two elements for the dimension of X11.
%%     ~~Describe \code{dim.x11} here~~
}
  \item{dim.x14}{Vector. Has two elements for the dimension of X14.
%%     ~~Describe \code{dim.x14} here~~
}
  \item{dim.x24}{Vector. Has two elements for the dimension of X24.
%%     ~~Describe \code{dim.x24} here~~
}
}
\details{
This function is for internal use but documented as a regular function to enable any user to assess the estimator and its functionality.
}
\value{Vector. Has length of the number of parameters to be estimated.
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

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\link{StratSel}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Starting values}% __ONLY ONE__ keyword per line
