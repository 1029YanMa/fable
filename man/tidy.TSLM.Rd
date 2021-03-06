% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lm.R
\name{tidy.TSLM}
\alias{tidy.TSLM}
\title{Tidy a fable model}
\usage{
\method{tidy}{TSLM}(x, ...)
}
\arguments{
\item{x}{An object to be converted into a tidy \code{\link[tibble:tibble]{tibble::tibble()}}.}

\item{...}{Additional arguments to tidying method.}
}
\value{
The model's coefficients in a \code{tibble}.
}
\description{
Returns the coefficients from the model in a \code{tibble} format.
}
\examples{
as_tsibble(USAccDeaths) \%>\%
  model(lm = TSLM(log(value) ~ trend() + season())) \%>\%
  tidy()
}
