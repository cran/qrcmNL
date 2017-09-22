\name{niqr-package}
\alias{niqr-package}
\docType{package}
\title{
Nonlinear Quantile Regression Coefficients Modeling
}
\description{
This package implements a nonlinear Frumento and Bottai's (2016) method for quantile regression
coefficient modeling (qrcm), in which quantile regression coefficients are described
by (flexible) parametric functions of the order of the quantile. In the classical qrcm framework the linearity in \eqn{\beta(p)} and/or in \eqn{\theta} could be relaxed at a cost of more complicated expressions for the ojective and the gradient functions. Here, we propose an efficiently algorithm to use more flexible structures for the regression coefficients.
With respect to the most famous function nlrq (quantreg package) our main function niqr implements the integrated quantile regression idea  of Frumento and Bottai's (2016) for nonlinear functions. As already known, this practice allows to estimate quantiles all at one time and not one at a time.
}
\details{
\tabular{ll}{
Package: \tab qrcmNL\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2016-10-05\cr
License: \tab GPL-2\cr
}
The function \code{\link{niqr}} permits specifying nonlinear basis for each variables. The function \code{\link{test.fit.niqr}} permits to do goodness of fit.
The auxiliary functions \code{\link{summary.niqr}}, \code{\link{predict.niqr}}, and \code{\link{plot.niqr}}
can be used to extract information from the fitted model.
}
\author{
Gianluca Sottile

Maintainer: Gianluca Sottile <gianluca.sottile@unipa.it>
}
\keyword{ package }
\references{
Frumento, P., and Bottai, M. (2016). Parametric modeling of quantile regression coefficient functions. Biometrics, 72 (1), pp 74-84, doi:10.1111/biom.12410.
}
\examples{

# use simulated data

n <- 1000
x <- runif(n)
fun <- function(theta, p){
  beta0 <- theta[1] + exp(theta[2]*p)
  beta1 <- theta[3] + theta[4]*p
  cbind(beta0, beta1)}
beta <- fun(c(1,1,1,1), runif(n))
y <- beta[, 1] + beta[, 2]*x
model <- niqr(fun=fun, x0=rep(0, 4), X=cbind(1,x), y=y)
}
