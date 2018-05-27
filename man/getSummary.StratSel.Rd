\name{getSummary}
\alias{getSummary.StratSel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{getSummary Method for extending mtable()
%%  ~~function to do ... ~~
}
\description{
This function extends the mtable() to report strategic selection models (\code{StratSel}). Together with \code{setStratSelDefault} and the \code{mtable} command from the \code{memisc} package users can create multi-model tables and export them to LaTeX.
}
\usage{
\method{getSummary}{StratSel}(obj, alpha = 0.05, ...)}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{An object of class \code{StratSel}.
%%     ~~Describe \code{object} here~~
}
  \item{alpha}{Significance level.
%%     ~~Describe \code{alpha} here~~
}
  \item{...}{additional arguments}
}
\value{
Returns a list of objects to be fed to \code{mtable}. Do not use this command directly. The command \code{mtable} will automatically call this function for an object of the \code{StratSel} class.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Elff, Martin. (2013). \emph{memisc:} Tools for Management of Survey Data, Graphics, Programming, Statistics, and Simulation R package version 0.96-7.
%% ~put references to the literature/web site here ~
}
\author{
Lucas Leemann \email{lleemann@gmail.com}
}
\seealso{
\code{\link{toLatex}}, \code{\link{mtable}}
}
\examples{
data(data.fake)
out1 <- StratSel(Y ~ var.A | var.D | var.E , data=data.fake, corr=FALSE)
out2 <- StratSel(Y ~ var.A | var.C | var.E, data=data.fake, corr=FALSE)
mtable(out1,out2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{LaTeX}
\keyword{Make tables}% __ONLY ONE__ keyword per line
