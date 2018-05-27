\name{predict}
\alias{predict.StratSel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Prediction Function for Objects of the \code{StratSel} Class
%%  ~~function to do ... ~~
}
\description{Prediction function for objects of the \code{StratSel} class. Provides either predictions for all observations in a model or for a specified profile. In addition, the function will either predict an outcome or three probabilities (indicating the probability for each outcome).
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
	\method{predict}{StratSel}(object, prob = FALSE, profile, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{An object of class \code{StratSel}.
%%     ~~Describe \code{x} here~~
}
  \item{prob}{Logical. If \code{prob=TRUE} the function will compute the predicted probabilities for each of the three possible outcomes. Default is \code{prob=FALSE}.
%%     ~~Describe \code{prob} here~~
}
  \item{profile}{Vector. A vector defining a specific profile for which the prediction is made.  
%%     ~~Describe \code{profile} here~~
}
  \item{\dots}{...
%%     ~~Describe \code{\dots} here~~
}
}

\value{Either a matrix with dimension \code{n * m}, where there are \code{n} observations in the original model and \code{m} is three (for the three possible outcomes) or it will be a vector with \code{n} elements indicating for each observation which the most likely outcome would be.
}
\author{
Lucas Leemann \email{lleemann@gmail.com}
%%  ~~who you are~~
}

\examples{
data(data.fake)
out1 <- StratSel(Y ~ var.A + var.B | var.C + var.D | var.E + var.C, data=data.fake, corr=FALSE)
predict(out1)
predict(out1, prob=TRUE)
predict(out1, profile=c(1,0.2,0.2,1,0.2,0.2,1,0.2,0.2))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Prediction}
