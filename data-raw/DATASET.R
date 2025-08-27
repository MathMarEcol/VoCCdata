## code to prepare `DATASET` dataset goes here

# We don't currently have the providence of these datasets.
# Use the existing ones for now. I will speak to Jorge.

library(terra)

load("data-raw/EZZs.rda")
EEZs <- vect(EEZs)
terra::writeVector(EEZs, "inst/extdata/EEZs.gpkg", overwrite = TRUE)

load("data-raw/HadiSST.rda")
HadiSST <- rast(HadiSST)
terra::writeRaster(HadiSST, "inst/extdata/HadiSST.tif",
                   overwrite = TRUE,
                   gdal = c("COMPRESS=LZW", "PREDICTOR=2", "TILED=YES"))

# This might shrink the file further if needed
# gdal = c("COMPRESS=DEFLATE", "PREDICTOR=2", "TILED=YES", "ZLEVEL=9")



load("data-raw/traj25.rda")
traj25 <- data.frame(traj25)

load("data-raw/marshift.rda")
marshift <- data.frame(marshift)


# Save only data frames as .rda files
usethis::use_data(traj25, marshift, internal = FALSE, overwrite = TRUE, compress = "bzip2")

# Check suggested compression formats
# tools::checkRdaFiles("R")


# library(terra)
#
# # Load EEZs (vector data)
# eez_path <- system.file("extdata", "EEZs.gpkg", package = "VoCCdata")
# EEZs <- terra::vect(eez_path)
#
# # Load HadiSST (raster data)
# sst_path <- system.file("extdata", "HadiSST.tif", package = "VoCCdata")
# HadiSST <- terra::rast(sst_path)
