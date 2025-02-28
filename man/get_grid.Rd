% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_grid.R
\name{get_grid}
\alias{get_grid}
\title{Get feature grid}
\usage{
get_grid(var, data)
}
\arguments{
\item{var}{Character string or vector giving the names of the features.}

\item{data}{Data frame containing the original training data.}
}
\value{
Tidy data frame (i.e., a "tibble" object). The columns contain the grid
values for features \code{var} based on the observed values in \code{data}.
}
\description{
Get the grid values for features based on the observed values in the data.
}
\examples{
\dontrun{
data('mtpl_be')
'ageph' \%>\% get_grid(data = mtpl_be)
'coverage' \%>\% get_grid(data = mtpl_be)
c('ageph', 'coverage') \%>\% get_grid(data = mtpl_be)
tidyr::expand_grid('ageph' \%>\% get_grid(data = mtpl_be),
                   'coverage' \%>\% get_grid(data = mtpl_be))
}
}
