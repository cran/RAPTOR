% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/align.R
\name{align}
\alias{align}
\title{Data alignment}
\usage{
align(input, year = FALSE, list = FALSE, interact = TRUE, make.plot = TRUE)
}
\arguments{
\item{input}{an \code{\link{is.raptor}} file.}

\item{year}{a numeric vector specifying the year of interest. The default (\code{\link{FALSE}}) applies the function on all years present in the input.}

\item{list}{a \code{\link{vector}} of numeric values indicating the rotation slope for each year.}

\item{interact}{a logical flag. If \code{\link{TRUE}}, the user can manually assign the degree of rotation for each annual ring in an interactive session. The user will have to select among the options (along the horizontal axis, along the vertical axis, manually define the degree of reorientation based on a set of slopes overlaid on the plot). If \code{\link{FALSE}}, the rotation is optimized automatically using a simple linear regression through all points along the horizontal axis (default = \code{\link{FALSE}}).}

\item{make.plot}{logical flag indicating whether to make a plot (default =  \code{\link{FALSE}}).}
}
\value{
An aligned \code{\link{is.raptor}} file.
}
\description{
Provides a re-aligned \code{\link{is.raptor}} file, where new x- and y-coordinates (XCAL and YCAL values, respectively) are calculated according to a specified rotation. Appropriate alignment is achieved when the first row of earlywood cells are positioned along an approximately horizontal axis and the radial files of tracheids are positioned along a vertical axis.
}
\details{
Correct alignment of cells/tracheids is important for detecting the first cells and assigning cells to a radial file. This function provides the option to align your cell data (XCAL and YCAL). This function provides and interactive procedure to improve the alignment by presenting a crosshair with slopes with which the sample should be rotated. Proper alignment is obtain when the first cells are approximately aligned on a horizontal line and the upward cells are propagated vertically. Either interactively or with predefined slopes, the user can rotate the sample orientation. An automatic option is also available where a simple linear regression is fitted through all points to adjust the rotation. The plot shows the original position of the cells (black dots) and lines that can be selected to rotate the sample. After correction the new position of the cells is presented (red dots).
}
\examples{
#rotating example data
input<-is.raptor(example.data(species="LOT_PICEA"), str=FALSE)
input<-align(input, year=2007, list=FALSE,interact=FALSE, make.plot=TRUE)
}
