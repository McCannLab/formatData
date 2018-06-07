#' @description Function to import Table S6 from Hasnain et al. (2013)
#' @param file path to the csv file.

#' @reference
#' Hasnain, Sarah S., Brian J. Shuter, and Charles K. Minns. “Phylogeny Influences the Relationships Linking Key Ecological Thermal Metrics for North American Freshwater Fish Species.” Edited by Dylan Fraser. Canadian Journal of Fisheries and Aquatic Sciences 70, no. 7 (July 2013): 964–72. https://doi.org/10.1139/cjfas-2012-0217.

getHasnainS6 <- function(file) {

  out <- read.table(file, header = T, skip = 0, sep = ',', dec ='.',
    stringsAsFactors = FALSE, na.strings = c("N/A*", "-"))

  out$Reference <- gsub(out$Reference, pat = "\n", rep= "", fixed = TRUE)
  out$Reference.1 <- gsub(out$Reference.1, pat = "\n", rep= "", fixed = TRUE)

  names(out) <- gsub(names(out), pat = ".", rep = "", fixed = TRUE)
  names(out)[3] <- "ScientificName"

  out
}
