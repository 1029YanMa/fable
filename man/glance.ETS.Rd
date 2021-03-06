% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ets.R
\name{glance.ETS}
\alias{glance.ETS}
\title{Glance an ETS model}
\usage{
\method{glance}{ETS}(x, ...)
}
\arguments{
\item{x}{model or other R object to convert to single-row data frame}

\item{...}{other arguments passed to methods}
}
\value{
A one row tibble summarising the model's fit.
}
\description{
Construct a single row summary of the ETS model.
}
\details{
Contains the variance of residuals (\code{sigma2}), the log-likelihood (\code{log_lik}),
and information criterion (\code{AIC}, \code{AICc}, \code{BIC}).
}
\examples{
as_tsibble(USAccDeaths) \%>\%
  model(ets = ETS(log(value) ~ season("A"))) \%>\%
  glance()
}
