\name{Weighted.LM.test}
\alias{Weighted.LM.test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Weighted Portmanteau Test for Fitted ARCH process
%%  ~~function to do ... ~~
}
\description{A weighted portmanteau test for testing the null hypothesis of adequately fitted ARCH process. This is essentially a weighted version of the statistic proposed by Li and Mak (1994)
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Weighted.LM.test(x, h.t, lag = 1, 
                type = c("correlation", "partial"),
                fitdf = 1, weighted = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a numeric vector or univariate time series, or residuals of a fitted time series
%%     ~~Describe \code{x} here~~
}
  \item{h.t}{a numeric vector of the conditional variances
%%     ~~Describe \code{h.t} here~~
}
  \item{lag}{the statistic will be based on \code{lag} autocorrelation coefficients.
%%     ~~Describe \code{lag} here~~
}
  \item{type}{type of test to be performed, either based on the autocorrelations or partial-autocorrelations.
%%     ~~Describe \code{type} here~~
}
  \item{fitdf}{the number of ARCH parameters fit to the model, default=1 since at least some ARCH model must be fit to find h.t
%%     ~~Describe \code{fitdf} here~~
}
  \item{weighted}{A flag determining if the weighting scheme should be utilized. TRUE by default, if FALSE, it performs the test from Li and Mak (1994)
%%     ~~Describe \code{weighted} here~~
}
}
\details{These test can be performed after fitting an ARCH process to a time series. The theoretical work was originally developed in Li and Mak (1994) and has recently been extended in Fisher and Gallagher (2012).
%%  ~~ If necessary, more details than the description above ~~
}
\value{A list with class "\code{htest}" containing the following components:
\item{statistic}{the value of the test statistic}
\item{parameter}{The approximate shape and scale parameters for the weighted statistic or degrees of freedom of the chi-squared distribution if the weighted flag is set to FALSE.}
\item{p.value}{The p-value of the test}
\item{method}{a character string indicating which type of test was performed.}
\item{data.name}{a character string giving the name of the data}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Fisher, T. J. and Gallagher, C. M. (2012), New Weighted Portmanteau Statistics for Time Series Goodness-of-Fit Testing. Journal of the American Statistical Association, accepted.

Li, W. K. and Mak, T. K. (1994), On the squared residual autocorrelations in non-linear time series with conditional heteroskedasticity. Journal of Time Series Analysis 15(6), 627-636.

%% ~put references to the literature/web site here ~
}
\author{Thomas J. Fisher
%%  ~~who you are~~
}
\note{Similiar to the \code{Box.test()} and \code{Weighted.Box.test()} functions
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
