\name{logLikStrat}
\alias{logLikStrat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Log-Likelihood Function of an Agent Error Model
%%  ~~function to do ... ~~
}
\description{
This function calculates the log-likelihood value for an agent error model (belongs to the general class of quantal response models). The underlying formal structure is
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

}
\usage{
logLikStrat(x11, x14, x24, y, beta)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x11}{A vector or a matrix containing the explanatory variables used to parametrize \code{u11}.
%%     ~~Describe \code{x11} here~~
}
  \item{x14}{A vector or a matrix containing the explanatory variables used to parametrize \code{u14}.
%%     ~~Describe \code{x14} here~~
}
  \item{x24}{A vector or a matrix containing the explanatory variables used to parametrize \code{u24}.
%%     ~~Describe \code{x24} here~~
}
  \item{y}{Vector. Outcome variable which can take values 1, 3, and 4 depending on which outcome occurred.  
%%     ~~Describe \code{y} here~~
}
  \item{beta}{Vector. Coefficients of the model.
%%     ~~Describe \code{beta} here~~
}
}
\details{
This function provides the likelihood of an agent error model (Signorino, 2003). Note, that to derive it one assumes that the two errors are independent. Further, as with probit and logit models, one needs to assume an error variance to achieve identification. Signorino uses \eqn{\sqrt 2 } while \code{logLikStrat} uses 1. Hence, the numeric results will differ, but all relevant statistics (predicted probabilities, z-values, ...) will be identical. Finally, \code{u13} and \code{u23} are set to 0 to achieve identification. 
%%  ~~ If necessary, more details than the description above ~~
}
\value{
	Returns a numeric value for the log-likelihood function evaluated for \eqn{\beta}. 
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
	 Curtis S. Signorino.  2003.  "Structure and Uncertainty
  in Discrete Choice Models."  \emph{Political Analysis}
  11:316--344.
%% ~put references to the literature/web site here ~
}
\author{
	Lucas Leemann \email{lleemann@gmail.com}
%%  ~~who you are~~
}
\note{
	The log-likelihood function: \cr
	\deqn{\ell\ell = \sum_{i=1}^n \left(\log(p_{i1})\cdot I(Y_{i}=1) + \log((1-p_{i1})(1-p_{i4}))\cdot I(Y_{i}=3) + \log((1-p_{i1})(p_{i4}))\cdot I(Y_{i}=4) \right)}{ll= \sum log(p_i1) I(Y_i=1) + log((1-p_i1)(1-p_i4)) I(Y_i=3) + log((1-p_i1)(p_i4)) I(Y_i=4)}

whereas
	\deqn{p_{i24} = \Phi(x_{24}\cdot\beta_{24}) }{p_i4 = \Phi(x_24 \beta_24)}

and

	\deqn{p_{i1} = \Phi(x_{11}\cdot\beta_{11}-p_{24}(x_{14}\cdot\beta_{14})) }{p_i1 = \Phi(x_11* \beta_11-p_24* (x_14 * \beta_14)) }


}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
	\code{\link{StratSel}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Log-Likelihood Function}
