% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.sgSEMp1.R
\name{plot.sgSEMp1}
\alias{plot.sgSEMp1}
\title{Plotting of Principle 1 of Semi-gSEM}
\usage{
\method{plot}{sgSEMp1}(x, ..., cutoff = 0.2, width = NULL, height = NULL,
  filename = NULL)
}
\arguments{
\item{x}{The returned list from sgSEMp1. Plotting uses the first element of this list (res.print) in which the first column of it is the response, the second column is variable and the other columns are the corresponding best functional form, r-squared, adj-r-squared, P-value1, P-value2 and P-value3.}

\item{...}{Other parameters. Currently not used.}

\item{cutoff}{A threshold value for the adjusted R-squared. Solid lines represent a relationship with the adjusted R-sqr greater than the cutoff and dotted lines with less than the cutoff. The default is 0.2.}

\item{width}{A numeric describing the width of the plot output in pixels.}

\item{height}{A numeric describing the height of the plot output in pixels.}

\item{filename}{A character string naming a file to save as an html file.}
}
\value{
An html style plot of the pairwise relationship pathway diagram between stressors and responses. Arrows show relationships between each variable with given statistical relations along the connection lines.
}
\description{
Plot semi-gSEM principle 1 result.
}
\details{
plot.sgSEMp1 plots a structural equation network model diagram based on the best functional form for each selected pairwise variable.
}
\examples{
# Load acrylic data set
data(acrylic)
# Build a semi-gSEM model with principle 1
ans <- sgSEMp1(acrylic)
# Plot the network model with adjusted-R-squred of 0.1
plot(ans, cutoff = 0.1)
}

