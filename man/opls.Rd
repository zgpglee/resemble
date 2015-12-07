% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{opls}
\alias{opls}
\title{orthogonal scores algorithn of partial leat squares (opls)}
\usage{
opls(X, Y, ncomp, scale,
     maxiter, tol,
     regression = TRUE,
     pcSelmethod = "cumvar",
     pcSelvalue = 0.99)
}
\arguments{
\item{X}{a \code{matrix} of predictor variables.}

\item{Y}{a \code{matrix} of either a single or multiple response variables.}

\item{ncomp}{the number of pls components.}

\item{scale}{logical indicating whether \code{X} must be scaled.}

\item{maxiter}{maximum number of iterations.}

\item{tol}{limit for convergence of the algorithm in the nipals algorithm.}

\item{regression}{a logical indicating if the function is being used for regression. Otherwise it is used only for projection. Default is \code{TRUE}.}

\item{pcSelmethod}{if \code{regression = TRUE}, the method for selecting the number of components.
Options are: \code{'cumvar'} (for selecting the number of principal components based on a given
cumulative amount of explained variance) and \code{"var"} (for selecting the number of principal
components based on a given amount of explained variance). Default is \code{'cumvar'}}

\item{pcSelvalue}{a numerical value that complements the selected method (\code{pcSelmethod}).
If \code{"cumvar"} is chosen, it must be a value (higher than 0 and lower than 1) indicating the maximum
amount of cumulative variance that the retained components should explain. If \code{"var"} is chosen,
it must be a value (higher than 0 and lower than 1) indicating that components that explain (individually)
a variance lower than this threshold must be excluded. If \code{"manual"} is chosen, it must be a value
specifying the desired number of principal components to retain. Default is 0.99.}
}
\value{
a list containing the following elements:
\itemize{
\item{\code{coefficients}}{ the \code{matrix} of regression coefficients.}
\item{\code{bo}}{ a \code{matrix} of one row containing the intercepts for each component.}
\item{\code{scores}}{ the \code{matrix} of scores.}
\item{\code{X.loadings}}{ the \code{matrix} of X loadings.}
\item{\code{Y.loadings}}{ the \code{matrix} of Y loadings.}
\item{\code{projectionM}}{ the projection \code{matrix}.}
\item{\code{variance}}{ a \code{list} conating two objects: \code{x.var} and \code{y.var}.
These objects contain information on the explained variance for the \code{X} and \code{Y} matrices respectively.}
\item{\code{transf}}{ a \code{list} conating two objects: \code{Xcenter} and \code{Xscale}.
These objects contain information on the explained variance for the \code{X} and \code{Y} matrices respectively.}
}
}
\description{
Computes orthogonal socres partial least squares (opls) regressions with the NIPALS algorithm. It allows multiple response variables.
For internal use only!
}
\author{
Leonardo Ramirez-Lopez
}
\keyword{internal}
