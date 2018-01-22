#' @description Function to import Appendix 1 from Casselman and Stephen (2005).
#' @param file path to the csv file.
#' @importFrom magrittr %<>%
#' @references
#' Casselman, Stephen J, Ontario, and Fish and Wildlife Branch. Catch-and-Release Angling: A Review with Guidelines for Proper Fish Handling Practices. Peterborough, Ont.: Fish & Wildlife Branch, 2005.

getCasselmanA1 <- function(file) {
  tmp <- readLines(file)[-1L]
  tmp <- tmp[tmp != ""]
  tmp %<>% strsplit(split = " {2,}") %>% do.call(what = rbind)
  out <- as.data.frame(tmp[-1L,], stringsAsFactors = FALSE)
  names(out) <- tmp[1L,]
  out
}
