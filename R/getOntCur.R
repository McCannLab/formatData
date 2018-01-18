#' @description Function to import BSM data

getOntCur <- function(file) {
  out <- read.table(file, stringsAsFactors = F, skip=5, header=F, sep=',', dec='.')
  nm1 <- read.table(file, stringsAsFactors = F, skip=2, nrow=1, header=F, sep=',', dec='.')
  nm2 <- read.table(file, stringsAsFactors = F, skip=4, nrows=1, header=F, sep=',', dec='.') %>% as.numeric
  #
  nm1 %<>% gsub(pat="\\(|\\)| ", rep = "_")
  nm1 %<>% gsub(pat="_+", rep = "_")
  names(out) <- nm1
  #
  id <- which(!is.na(nm2))
  una <- sprintf("%03d", as.numeric(unique(nm2[id])))
  names(out)[id] <- paste0(rep(c('PA', 'CPUE', 'CUEW'), each=length(una)), '_', una)
  out
}
