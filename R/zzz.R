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

.onAttach <- function(libname, pkgname) {
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.11")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}
