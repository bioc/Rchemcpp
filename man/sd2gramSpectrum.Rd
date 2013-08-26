\name{sd2gramSpectrum}
\alias{sd2gramSpectrum}
\title{sd2gramSpectrum - Similarity of molecules by walk-based graph kernels}
\usage{
  sd2gramSpectrum(sdf, sdf2,
    kernelType = c("spectrum", "tanimoto", "minmaxTanimoto", "marginalized", "lambda"),
    margKernelEndProbability = 0.1, lambdaKernelLambda = 1,
    depthMax = as.integer(3), onlyDepthMax = FALSE,
    flagRemoveH = FALSE, morganOrder = as.integer(0),
    silentMode = FALSE, returnNormalized = TRUE,
    detectArom = FALSE)
}
\arguments{
  \item{sdf}{File containing the molecules. Must be in MDL
  file format (MOL and SDF files). For more information on
  the file format see
  http://en.wikipedia.org/wiki/Chemical_table_file.}

  \item{sdf2}{A second file containing molecules. Must also
  be in SDF. If specified the molecules of the first file
  will be compared with the molecules of this second file.
  Default = "missing".}

  \item{kernelType}{Type of kernel to be used. Options are
  "spectrum (Spectrum kernel) , "tanimoto" (Tanimoto
  kernel), "minmaxTanimoto" (MinMax Tanimoto kernel),
  "marginalized (Marginalized kernel approximation) and
  "lambda" (LambdaK kernel). See vignette for details.
  Default = "spectrum".}

  \item{margKernelEndProbability}{The ending probability
  for the marginalized kernel. Default = 0.1.}

  \item{lambdaKernelLambda}{The lambda parameter of the
  LambdaK kernel. Default = 1.0.}

  \item{depthMax}{The maximal length of the molecular
  fragments. Default = 3.}

  \item{onlyDepthMax}{Whether fragments up to the given
  length should be used or only fragments of the given
  length. Default = FALSE.}

  \item{flagRemoveH}{A logical that indicates whether
  H-atoms should be removed or not. Default = FALSE}

  \item{morganOrder}{The order of the DeMorgan indices to
  be used. If set to zero no DeMorgan indices are used. The
  higher the order the more different types of atoms exist
  and consequently the more dissimilar will be the
  molecules. Default = 0.}

  \item{silentMode}{Whether or not the program should print
  progress reports to the standart output. Default =
  FALSE.}

  \item{returnNormalized}{A logical specifying whether a
  normalized kernel matrix should be returned. Default =
  TRUE.}

  \item{detectArom}{Whether aromatic rings should be
  detected and aromatic bonds should a special bond type.
  If large molecules are in the data set the detection of
  aromatic rings can be very time-consuming. (Default =
  FALSE).}
}
\value{
  A numeric matrix containing the similarity values between
  the molecules.
}
\description{
  This function computes several walk-based graph kernel
  functions based on finite length walks and a fast
  implementation for input SDF file(s).
}
\examples{
sdfolder <- system.file("extdata",package="Rchemcpp")
sdf <- list.files(sdfolder,full.names=TRUE,pattern="tiny")
K <- sd2gramSpectrum(sdf)
}
\author{
  Michael Mahr <rchemcpp@bioinf.jku.at> c++ function
  written by Jean-Luc Perret and Pierre Mahe
}

