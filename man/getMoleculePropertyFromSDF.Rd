\name{getMoleculePropertyFromSDF}
\alias{getMoleculePropertyFromSDF}
\title{getMoleculePropertyFromSDF - a helper function}
\usage{
  getMoleculePropertyFromSDF(sdfile,property)
}
\arguments{
  \item{sdfile}{A character containing the name of the SDF
  file.}

  \item{property}{The name of the slot in the SDF.}
}
\value{
  A character vector with one value per molecule.
}
\description{
  This function helps to extract a certain property from an
  SDF file. Usually the molecule class, like
  "active/non-active" or a property of the molecule, like
  "biological activity", is also stored in the SDF file.
  These values often serve as targets for a prediction
  task. This function is a small wrapper that extracts the
  information.
}
\examples{
sdfolder <- system.file("extdata",package="Rchemcpp")
sdf <- list.files(sdfolder,full.names=TRUE,pattern="tiny")
activity <- getMoleculePropertyFromSDF(sdf,"Activity")
}
\author{
  Guenter Klambauer <rchemcpp@bioinf.jku.at>
}

