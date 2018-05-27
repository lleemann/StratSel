\name{data.fake}
\alias{data.fake}
\docType{data}
\title{Fake Data for Illustration
%%   ~~ data name/kind ... ~~
}
\description{This data is just for illustration. The code to generate it is: \cr


\code{set.seed(124)} \cr
\code{n <- 1000 } \cr
\code{x24 <- cbind(rnorm(n), rnorm(n)) } \cr
\code{error <- rmnorm(n,c(0,0),matrix(c(1,0.6,0.6,1),2,2))} \cr
\code{e24 <- error[,2]} \cr
\code{y24.latent <-   x24\%*\%c(1,1) +  e24} \cr
\code{y2 <- rep(NA,n)} \cr
\code{y2[y24.latent>0] <- 1} \cr
\code{y2[y24.latent<0] <- 0} \cr
\code{mod2 <- glm(y2 ~ x24, family=binomial(link=probit))} \cr
\code{p24 <- pnorm(predict(mod2))} \cr
\code{x11 <- cbind(rnorm(n, sd=0.2), rnorm(n, sd=0.2)) } \cr
\code{x14 <- cbind(x24[,2],rnorm(n))} \cr
\code{e14 <- error[,1]} \cr
\code{y14.latent <- x14\%*\%c(2,1) * p24 -  x11\%*\%c(1,1) + e14} \cr
\code{y1 <- rep(NA,n)} \cr
\code{y1[y14.latent>0] <- 1} \cr
\code{y1[y14.latent<0] <- 0} \cr
\code{Y <- rep(NA,n)} \cr
\code{Y[y1==0] <- 1} \cr
\code{Y[y1==1&y2==0] <- 3} \cr
\code{Y[y1==1&y2==1] <- 4} \cr
\code{colnames(x11) <- c("var A", "var B")} \cr
\code{colnames(x14) <- c("var C", "var D")} \cr
\code{colnames(x24) <- c("var E", "var C")} \cr
\code{data.fake <- data.frame(Y,x11,x14,x24)} \cr

%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(data.fake)}
\format{
  A data frame with 1000 observations on the following 7 variables.
  \describe{
    \item{\code{Y}}{A numeric vector with values 1,3, and 4 depending on which outcome occurred.}
    \item{\code{var.A}}{A numeric vector mimicking an explanatory variable as part of \eqn{X11}.}
    \item{\code{var.B}}{A numeric vector mimicking an explanatory variable as part of \eqn{X11}.}
    \item{\code{var.C}}{A numeric vector mimicking an explanatory variable as part of \eqn{X14} and of \eqn{X24}.}
    \item{\code{var.D}}{A numeric vector mimicking an explanatory variable as part of \eqn{X14}.}
    \item{\code{var.E}}{A numeric vector mimicking an explanatory variable as part of \eqn{X24}.}
    \item{\code{var.C.1}}{A numeric vector mimicking an explanatory variable as part of \eqn{X14} and of \eqn{X24}. Identical to var.C.}
      }
}

\source{
Can be independently re-created by anybody. 
}

\examples{
data(data.fake)
summary(data.fake)
\dontrun{out1 <- StratSel(Y ~ var.A + var.B | var.C + var.D | 
	var.E + var.C, data=data.fake, corr=TRUE)}
\dontrun{summary(out1)}
# True parameters are 1 or 2 except the three constant terms (which are 0). 
# The correlation parameter was set to +0.6. 
}
\keyword{datasets}
