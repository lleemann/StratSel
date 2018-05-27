\name{plot}
\alias{plot.StratSel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plots a StratSel Object
%%  ~~function to do ... ~~
}
\description{Plots predicted probabilities for all three possible outcomes based on an object of class \code{StratSel}.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
	\method{plot}{StratSel}(x, profile, x.move, x.range, uncertainty = FALSE, 
 n.sim = 100, ci = 0.95, ylim, xlab, ylab1, ylab2, ylab3, plot.nr, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{An object of class \code{StratSel}
%%     ~~Describe \code{object} here~~
}
  \item{profile}{Vector. The values of all independent variables including the three constants.
%%     ~~Describe \code{profile} here~~
}
  \item{x.move}{Scalar. Indicates which variable is changing (and displayed on the x-axis). 
%%     ~~Describe \code{x.move} here~~
}
  \item{x.range}{Vector. A vector with two elements. The \code{x} which is moving will start at \code{x.range[1]} and end at \code{x.range[2]}.
%%     ~~Describe \code{x.range} here~~
}
  \item{uncertainty}{Logical. Indicates whether confidence bands should be displayed or not.
%%     ~~Describe \code{uncertainty} here~~
}
  \item{n.sim}{Scalar. If \code{uncertainty=TRUE} the prediction uncertainty is generated with a simulation based on \code{n.sim} simulations. Default is 100. It is recommended to use 1000 simulations.
%%     ~~Describe \code{n.sim} here~~
}
  \item{ci}{Scalar. Indicates which confidence interval should be plotted, the default is 0.95.
%%     ~~Describe \code{ci} here~~
}
  \item{ylim}{Vector. A vector with two elements defining the range of the plotted y (predicted probability).
%%     ~~Describe \code{ylim} here~~
}
  \item{xlab}{String. A label to be used for the x-axis. Will be recycled in all three plots.
%%     ~~Describe \code{xlab} here~~
}
  \item{ylab1}{String. Label for the y-axis of the first plot (predicted probability of outcome 1).
%%     ~~Describe \code{ylab1} here~~
}
  \item{ylab2}{String. Label for the y-axis of the second plot (predicted probability of not outcome 1).
%%     ~~Describe \code{ylab2} here~~
}
  \item{ylab3}{String. Label for the y-axis of the third plot (predicted probability of outcome 4).
%%     ~~Describe \code{ylab3} here~~
}
  \item{plot.nr}{Vector. If one does not want to plot all three outcomes, one can use this vector to indicate which plot(s) should be shown.
%%     ~~Describe \code{plot.nr} here~~
}
  \item{\dots}{Further arguments to be supplied to \code{plot}.
%%     ~~Describe \code{\dots} here~~
}
}
\author{
	Lucas Leemann \email{lleemann@gmail.com}
%%  ~~who you are~~
}

\examples{
data(data.fake)
# Running just an agent error model (note: corr=FALSE) with \code{var.C} being 
#part of both actors' utilities
out1 <- StratSel(Y ~ var.A + var.B | var.C + var.D | var.E + var.C, data=data.fake, corr=FALSE)
par(mfrow=c(3,1))
plot(out1, profile=c(1,0.2,-0.2,1,0.2,-0.2,1,0.1,-0.3), 
 x.move=c(5,9),x.range=c(-15,15), ci=0.7, uncertainty=TRUE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Illustration}
