
setMethod("length", signature="Rcpp_Rmoleculeset",
		definition = function(x){
			x$numMolecules()
		})
