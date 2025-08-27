#' Global monthly mean sea surface temperatures (SST) for 1955-2010
#'
#' A raster stack with 672 layers containing global mean monthly SSTs (HadISST 1.1) at 1-deg resolution for the period Jan 1955 to Dec 2010. Sourced from the Hadley Centre.
#' This dataset is stored as an external file and can be loaded using the example code below.
#'
#' @format External GeoTIFF file containing a SpatRaster with 672 layers
#' @source Rayner et al. 2003. Global analyses of sea surface temperature, sea ice, and night marine air temperature since the late nineteenth century. J. Geophys. Res.Vol. 108: 4407. \url{https://www.metoffice.gov.uk/hadobs/hadisst/HadISST_paper.pdf}
#' @references \url{https://www.metoffice.gov.uk/hadobs/hadisst/}
#' @examples
#' \dontrun{
#' library(terra)
#' sst_path <- system.file("extdata", "HadiSST.tif", package = "VoCCdata")
#' if (file.exists(sst_path)) {
#'   HadiSST <- terra::rast(sst_path)
#'   plot(HadiSST[[1]])
#' }
#' }
#' @name HadiSST-data
NULL

#' Western Pacific tropical Exclusive Economic Zone (EEZ) boundaries
#'
#' A spatial polygon data frame containing EEZs for Western Pacific tropical island nations.
#' This dataset is stored as an external file and can be loaded using the example code below.
#'
#' @format External GeoPackage file containing a SpatVector
#' @source \url{http://www.marineregions.org/downloads.php} (v10)
#' @examples
#' \dontrun{
#' library(terra)
#' eez_path <- system.file("extdata", "EEZs.gpkg", package = "VoCCdata")
#' if (file.exists(eez_path)) {
#'   EEZs <- terra::vect(eez_path)
#'   plot(EEZs)
#' }
#' }
#' @name EEZs-data
NULL

#' Global metadataset of reported marine species range shifts
#'
#' An extract from the meta data set used by Poloczanska et al.(2013) containing range shifts in marine taxa reported in the literature. Null responses removed and shifts reported as absolute shift distances.
#'
#' @format A data frame with variables:
#' @source Poloczanska et al. 2013. Global imprint of climate change on marine life. Nat. Clim. Change, 3, 919-925. \url{https://www.nature.com/articles/nclimate1958}
#' @references Brown et al.(2016)
#' @examples
#' head(marshift)
"marshift"

#' Climate velocity trajectories
#'
#' Climate velocity trajectories produced using the HSST data for a starting 0.25-degree coordinate grid and the period 1960-2009. The data frame contains coordinates and id for each trajectory.
#'
#' @format A data frame with variables:
#' @examples
#' head(traj25)
"traj25"
