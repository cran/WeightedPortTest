\name{Weighted.Box.test}
\alias{Weighted.Box.test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Weighted Portmanteau Test
%%  ~~function to do ... ~~
}
\description{Weighted portmanteau tests for testing the null hypothesis of adequate ARMA fit and/or for detecting nonlinear processes. Written in the style of \code{Box.test()} and is capable of performing the traditional Box Pierce (1970), Ljung Box (1978) or Monti (1994) tests.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Weighted.Box.test(x, lag = 1, 
                 type = c("Box-Pierce", "Ljung-Box", "Monti"),
                 fitdf = 0, sqrd.res = FALSE,
                 log.sqrd.res = FALSE, abs.res = FALSE,
                 weighted = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a numeric vector or univariate time series, or residuals of a fitted time series
%%     ~~Describe \code{x} here~~
}
  \item{lag}{the statistic will be based on \code{lag} autocorrelation coefficients. lag=1 by default
%%     ~~Describe \code{lag} here~~
}
  \item{type}{test to be performed, partial matching is used. "Box-Pierce" by default
%%     ~~Describe \code{type} here~~
}
  \item{fitdf}{number of degrees of freedom to be subtracted if \code{x} is a series of residuals, set at 0 by default
%%     ~~Describe \code{fitdf} here~~
}
  \item{sqrd.res}{A flag, should the series/residuals be squared to detect for nonlinear effects?, FALSE by default
%%     ~~Describe \code{sqrd.res} here~~
}
  \item{log.sqrd.res}{A flag, should a log of the squared series/residuals be used to detect for nonlinear effects? FALSE by default
%%     ~~Describe \code{log.sqrd.res} here~~
}
  \item{abs.res}{A flag, should the absolute series or residuals be used to detect for nonlinear effects? FALSE by default
%%     ~~Describe \code{abs.res} here~~
}
  \item{weighted}{A flag determining if the weighting scheme should be utilized. TRUE by default. If set to FALSE, the traditional test is performed with no weights
%%     ~~Describe \code{weighted} here~~
}
}
\details{These test are traditionally applied to a time series for detecting autocorrelation, or to the residuals of an \code{ARMA(p,q)} fit to check the adequacy of that fit or to detect nonlinear (i.e. GARCH) effects in the time/residual series. The weighting scheme utilized here is asymptotically similar to the results found in Pena and Rodriguez (2002) and Mahdi and McLeod (2012) (i.e. the \code{portes} package).
%%  ~~ If necessary, more details than the description above ~~
}
\value{A list with class "\code{htest}" containing the following components:
\item{statistic}{the value of the test statistic}
\item{parameter}{The approximate shape and scale parameters for the weighted statistic or degrees of freedom of the chi-squared distribution if the weighted flag is set to false.}
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
Box, G. E. P. and Pierce, D. A. (1970), Distribution of residual correlations in autoregressive-integrated moving average time series models. Journal of the American Statistical Association, 65, 1509-1526.

Fisher, T. J. and Gallagher, C. M. (2012), New Weighted Portmanteau Statistics for Time Series Goodness-of-Fit Testing. Journal of the American Statistical Association, accepted.

Ljung, G. M. and Box, G. E. P. (1978), On a measure of lack of fit in time series models. Biometrika 65, 297-303.

Mahdi, E. and McLeod, A. I. (2012), Improved multivariate portmanteau test. Journal of Time Series Analysis 65(2), 297-303.

Monti, A. C. (1994), A proposal for a residual autocorrelation test in linear models. Biometrika 81(4), 776-780.

Pena, D. and Rodriguez, J. (2002) A powerful portmanteau test of lack of fit for time series. Journal of the American Statistical Association 97(458), 601-610.
%% ~put references to the literature/web site here ~
}
\author{
Thomas J. Fisher
%%  ~~who you are~~
}
\note{Like the \code{Box.test()} function, missing values are not handled
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
set.seed(1)
x <- rnorm(100);
Weighted.Box.test(x, lag=10, type="Ljung");
Weighted.Box.test(x, lag=10, type="Ljung", sqrd.res=TRUE);
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
