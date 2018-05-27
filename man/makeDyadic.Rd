\name{makeDyadic}
\alias{makeDyadic}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{A Function To Create Dyadic Data Sets
%%  ~~function to do ... ~~
}
\description{
	This function allows the user to create dyadic data sets which can be directed or undirected.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
makeDyadic(x, directed = FALSE, show.progress = 5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{The data matrix whereas the first variable is the country code and the second column has to be the time variable.
%%     ~~Describe \code{x} here~~
}
  \item{directed}{Logical. If \code{directed=TRUE} the dyadic data set will be directed and have variables with amended names (creating sen_varname for sender and rec_varname for receiver).
%%     ~~Describe \code{directed} here~~
}
  \item{show.progress}{Logical. The process may take some time depending on the size of the supplied data matrix. This option allows users to receive feedback of how far along the process is at periodical steps. Default is set to 5.
%%     ~~Describe \code{show.progress} here~~
}
}
\details{
This function was first written for Simon Collrad-Wexler and then later amended for Fabio Wasserfallen.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a data frame with the dyadic data set.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{
Lucas Leemann \email{lleemann@gmail.com}
%%  ~~who you are~~
}

\examples{
dataOrig <- matrix(c( rep(c(1:4),3), rep(1,4), rep(2,4), rep(3,4),
 rnorm(4,1.5,0.1), rnorm(4,2.5,0.1), rnorm(4,3.5,0.1), rnorm(4,4.5,0.1),
 rnorm(4,5.5,0.1), rnorm(4,6.5,0.1)),12,4)
colnames(dataOrig) <- c("countryCODE", "Year", "Variable 1", "Variable 2")
dataNew <- makeDyadic(dataOrig, directed=TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Creating dyadic datasets}
