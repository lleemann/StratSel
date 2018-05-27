\name{logLikStratSel}
\alias{logLikStratSel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Log-Likelihood Function of an Agent Error Model with Correlated Errors (strategic selection model)
%%  ~~function to do ... ~~
}
\description{
	This function calculates the log-likelihood value for an agent error model (belongs to the general class of quantal response models) with correlated errors. The underlying formal structure is
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
logLikStratSel(x11, x14, x24, y, beta)
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
  \item{beta}{Vector. Coefficients of the model whereas the last element is the correlation coefficient \eqn{\rho}. Note, that this parameter has been re-paramterized (see \emph{details}).
%%     ~~Describe \code{beta} here~~
}

}
\details{
	This function provides the likelihood of an agent error model (Signorino, 2003) but in addition allows the random components to be correlated and hence can take selection into account. The correlation parameter is re-paramaterized (see \emph{Note}). Further, as with probit and logit models, one needs to assume an error variance to achieve identification, here 1 is chosen as with a regular probit model. Finally, \code{u13} and \code{u23} are set to 0 to achieve identification. 
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
Lucas Leemann. 2013. "Strategy and Sample Selection - A Strategic Selection Estimator", forthcoming in \emph{Political Analysis}.
%% ~put references to the literature/web site here ~
}
\author{
		Lucas Leemann \email{lleemann@gmail.com}

%%  ~~who you are~~
}
\note{The notation \eqn{\boldsymbol{\Phi_2}(a;b;c)} indicates a bivariate standard normal cumulative distribution evaluated at the values \code{a,b} whereas the two random variables have a correlation of \code{c}.
	
	\deqn{\ell\ell = \sum_{i=1}^n \log\left(\boldsymbol{\Phi_2}(p_{i4}(\mathbf{x}_{i14} \boldsymbol{\beta}_{14})-\mathbf{x}_{i11}\boldsymbol{\beta}_{11}; \mathbf{x}_{i24} \boldsymbol{\beta}_{24}; -\rho)^{(1-I(y_{i}=1))(1-I(y_{i}=4))} \right)}{ll= \sum log(\Phi_2(p_i4(x_i14*\beta_14)-x_i11*\beta_11; x_i24*\beta_24; -\rho )^(1-I(y_1=1))(1-I(y_1=4))  }
	\deqn{+ \sum_{i=1}^n \log\left(\boldsymbol{\Phi_2}(p_{i4}(\mathbf{x}_{i14} \boldsymbol{\beta}_{14})-\mathbf{x}_{i11}\boldsymbol{\beta}_{11}; \mathbf{x}_{i24} \boldsymbol{\beta}_{24}; \rho)^{(1-I(y_{i}=1))I(y_{i}=4)} \right)}{ + \sum log(\Phi_2(p_i4(x_i14*\beta_14)-x_i11*\beta_11; x_i24*\beta_24; \rho )^(1-I(y_1=1))I(y_1=4)  } 
	\deqn{+ \sum_{i=1}^n \log\left(1-\Phi(p_{i4} \mathbf{x}_{i14} \boldsymbol{\beta}_{14} -\mathbf{x}_{i1} \boldsymbol{\beta}_{11})\right)}{\sum log(1-\Phi(p_i4*x_i14*\beta_14 - x_i11*\beta_11))}

whereas
	\deqn{p_{i24} = \Phi(x_{24}\cdot\beta_{24}) }{p_i4 = \Phi(x_24 \beta_24)}

and

	\deqn{p_{i1} = \Phi(x_{11}\cdot\beta_{11}-p_{24}(x_{14}\cdot\beta_{14})) }{p_i1 = \Phi(x_11* \beta_11-p_24* (x_14 * \beta_14)) }

The re-parametrization is as follows:
	\deqn{\rho = \frac{2}{1-exp(-\theta)}- 1}{\rho = 2/(1-exp(-\theta))- 1}

%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
		\code{\link{StratSel}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Log-Likelihood Function}
