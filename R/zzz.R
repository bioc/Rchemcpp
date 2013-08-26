.onLoad <- function(lib, pkg, ...) {
  Sys.setenv(RCHEMCPPPATH=file.path(lib,pkg,"chemcpp"))
  library.dynam(chname="Rchemcpp",package=pkg,lib.loc=lib)
}

loadModule("Rmolecule", TRUE)
loadModule("Rmoleculeset", TRUE)
loadModule("Relements", TRUE)
loadModule("subtreehelper",TRUE)
loadModule("spectrumhelper",TRUE)
loadModule("spectrum3Dhelper",TRUE)

