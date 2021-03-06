% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ar.R
\name{residuals.AR}
\alias{residuals.AR}
\title{Extract residuals values from a fable model}
\usage{
\method{residuals}{AR}(object, type = c("innovation", "regression"), ...)
}
\arguments{
\item{object}{The time series model used to produce the forecasts}

\item{type}{The type of the residuals to extract.}

\item{...}{Additional arguments for forecast model methods.}
}
\value{
A vector of fitted residuals.
}
\description{
Extracts the residuals.
}
\examples{
as_tsibble(lh) \%>\%
  model(AR(value ~ order(3))) \%>\%
  residuals()
}
