\name{StratSel-package}
\alias{StratSel-package}
\docType{package}
\title{
This package allows to estimate strategic selection models.
}
\description{
This package provides functionality to estimate, summarize, plot, predict, and export strategic selection estimates. It allows researchers to incorporate the strategic nature of the DGP while not constraining the errors to be orthogonal. By relaxing the assumptions, this estimator becomes a blend of an agent error model and a Heckman selection model. 
}
\details{
\tabular{ll}{
Package: \tab StratSel\cr
Type: \tab Package\cr
Version: \tab 0.1\cr
Date: \tab 2013-10-21\cr
License: \tab GPL (>= 2) \cr
}
}
\author{
Lucas Leemann \email{lleemann@gmail.com}

}
\references{
  	Lucas Leemann. 2014. "Strategy and Sample Selection - A Strategic Selection Estimator", \emph{Political Analysis} 22: 374-397.
}
\keyword{Strategic models}
\seealso{
\code{games}
}
\examples{
# replicate the example from Leemann (2014):
library(memisc)
data(war1800)
\dontrun{out1 <- StratSel(Y ~ s_wt_re1 + revis1 | dem1 + mixed1 | balanc + 
 dem2 + mixed2, data=war1800, corr=TRUE)}
out2 <- StratSel(Y ~ s_wt_re1 + revis1 | dem1 + mixed1 | balanc + 
 dem2 + mixed2, data=war1800, corr=FALSE)
setStratSelDefault()
\dontrun{z <- mtable(out1,out2)}
# toLatex(z) for a LaTeX output or just regular table:
}
