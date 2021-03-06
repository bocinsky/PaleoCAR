% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_bocinsky2016.R
\name{get_bocinsky2016}
\alias{get_bocinsky2016}
\title{Download, mask, and calculate the maize growing niche from the Bocinsky 2016 data
available from the NOAA paleoclimate database:}
\usage{
get_bocinsky2016(template = NULL, label = "paleocar",
  raw.dir = "./RAW/PALEOCAR/",
  extraction.dir = paste0("./EXTRACTIONS/", label, "/PALEOCAR/"),
  prcp_threshold = 300, gdd_threshold = 1800, years = 1:2000,
  force.redo = F)
}
\arguments{
\item{template}{A Spatial* or Raster* object from which to define the area of interest.
If omitted, download entire reconstruction.}

\item{label}{A character string naming the study area.}

\item{raw.dir}{A character string indicating where raw downloaded files should be put.
The directory will be created if missing. Defaults to './RAW/NED/'.}

\item{extraction.dir}{A character string indicating where the extracted and cropped DEM should be put.
The directory will be created if missing. Defaults to './EXTRACTIONS/NED/'.}

\item{prcp_threshold}{The minimum amount of water-year precipitation, in mm, required to be in the farming niche.
Defaults to 300 mm. Use 'NA' to suppress niche calculation.}

\item{gdd_threshold}{The minimum number of Fahrenheit growing degree daysrequired to be in the farming niche.
Defaults to 1800 FGDD. Use 'NA' to suppress niche calculation.}

\item{years}{An integer vector of years, between AD 1 and 2000, you wish to extract.
Defaults to 1:2000.}

\item{force.redo}{If an extraction for this template and label already exists, should a new one be created?}
}
\value{
A logical RasterBrick of the niche, through time.
}
\description{
Bocinsky, R. K., J. Rush, K. W. Kintigh, and T. A. Kohler. 2016. 
Exploration and exploitation in the macrohistory of the pre-Hispanic Pueblo Southwest. 
Science Advances 2:e1501532.
}
