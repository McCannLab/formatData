#' @description Function to import Table S1 from Hasnain et al. (2013)
#' @param file path to the csv file.

#' @reference
#' Hasnain, Sarah S., Brian J. Shuter, and Charles K. Minns. “Phylogeny Influences the Relationships Linking Key Ecological Thermal Metrics for North American Freshwater Fish Species.” Edited by Dylan Fraser. Canadian Journal of Fisheries and Aquatic Sciences 70, no. 7 (July 2013): 964–72. https://doi.org/10.1139/cjfas-2012-0217.

getHasnainS1 <- function(file) {

  out <- read.table(file, header = T, skip = 1, sep = ',', dec ='.', stringsAsFactors = F)
  names(out)[1:3] <- read.table(file, nrows = 1, sep = ',', dec ='.', stringsAsFactors = F)[1:3]
  # fill *Family* column out
  tmp <- out[,1L]
  for (i in 2:length(tmp)){
    if (tmp[i] == "") {
      tmp[i] <- tmp[i-1]
    }
  }
  out[,1L] <- tmp
  #
  out[out == ""] <- NA
  #
  for (i in 4:9) {
    out[i] <- as.numeric(unlist(lapply(strsplit(out[,i], split = "\\+/-"), function(x) x[1L])))
  }
  out
}
