\name{StratSel}
\alias{StratSel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Fitting Strategic Selection Models
%%  ~~function to do ... ~~
}
\description{
	This function estimates a strategic selection estimator. 		This function fits a strategic selection estimator which is based on an agent error model (belongs to the general class of quantal response models). The underlying formal structure is
\preformatted{
       1 
      /\  
     /  \  
    /    \ 2  
   u11   /\  
        /  \  
       /    \  
      0     u14  
      0     u24  
}
and shows a game where there are two players which move sequentially. Player 1 decides to move left or right and if she does move right player 2 gets to move. The final outcome in this case depends on the move of player 2. 
	
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
StratSel(formula, corr = TRUE, Startval, optim.method = "BFGS", data, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{formula}{The formula has the following form \code{Y ~ X11 | X14 | X24} whereas \code{Y} is the outcome variable taking values 1, 3, or 4 depending on which outcome resulted. The explanatory variables are supplied via \code{X11}, \code{X14}, and \code{X24} depending on which part of the utility function they should explain.
%%     ~~Describe \code{formula} here~~
}
  \item{corr}{Logical. If \code{corr=TRUE} a strategic selection estimator is estimated. If \code{corr=FALSE} an ordinary agent error model is estimated as the command \code{egame12} in the \code{games} package does. Note, that the variance of the error terms is fixed differently and hence the coefficients will be different, but all resulting statistics (z-values, predicted probabilities, ...) are identical as the fixed variances are identifying assumptions. See \code{\link{logLikStratSel}} for details.
%%     ~~Describe \code{corr} here~~
}
  \item{Startval}{Vector. Allows the user to specify starting values. If there is no user-supplied vector the function will generate starting values itself. It is strongly recommended to to let the function determine the optimal starting values.
%%     ~~Describe \code{Startval} here~~
}
  \item{optim.method}{Optimization method to be used by \code{optim}; can be: "Nelder-Mead", "BFGS", "CG", "L-BFGS-B", "SANN", or "Brent". See \code{optim} for details. The default is "BFGS".
%%     ~~Describe \code{optim.method} here~~
}
  \item{data}{an optional data frame, list or environment (or object coercible by \code{\link{as.data.frame}} to a data frame) containing the variables in the model. If not found in \code{data}, the variables are taken from \code{environment(formula)}, typically the environment from which \code{StratSel} is called.
%%     ~~Describe \code{data} here~~
}
  \item{\dots}{additional arguments.
%%     ~~Describe \code{\dots} here~~
}
}
%%\details{
%%		This function fits a strategic selection estimator which is based on an agent error model (belongs to the general class of quantal response models). The underlying formal structure is
%%\preformatted{
%%       1 
%%      /\  
%%     /  \  
%%    /    \ 2  
%%   u11   /\  
%%        /  \  
%%       /    \  
%%      0     u14  
%%      0     u24  
%%}
%%and shows a game where there are two players which move sequentially. Player 1 decides to move left or right and if she does move right player 2 gets to move. The final outcome in this case depends on the move of player 2. 
%%
%%}
\value{
	\code{StratSel} returns an object of class \code{StratSel} for which appropriate \code{\link{plot}}, \code{\link{print}}, \code{\link{summary}}, and \code{\link{predict}} functions exist.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
  	Lucas Leemann. 2014. "Strategy and Sample Selection - A Strategic Selection Estimator", \emph{Political Analysis} 22: 374-397.
	
		 Curtis S. Signorino.  2003.  "Structure and Uncertainty
  in Discrete Choice Models."  \emph{Political Analysis}
  11:316--344.
%% ~put references to the literature/web site here ~
}
\author{
	Lucas Leemann \email{lleemann@gmail.com}
%%  ~~who you are~~
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
# replicate the example from Leemann (2014):
data(war1800)
\dontrun{out1 <- StratSel(Y ~ s_wt_re1 + revis1 | dem1 + mixed1 | balanc
 + dem2 + mixed2, data=war1800, corr=TRUE)}
out2 <- StratSel(Y ~ s_wt_re1 + revis1 | dem1 + mixed1 | balanc
 + dem2 + mixed2, data=war1800, corr=FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Strategic Selection Estimator}
