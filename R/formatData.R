getOntCur <- function(file = "csvFiles/Ontario-Main.csv") {
  out <- read.table(file, stringsAsFactors = F, skip=5, header=F, sep=',', dec='.')
  title <- read.table(file, stringsAsFactors = F, skip=2, nrow=1, header=F, sep=',', dec='.')
  #
  title <- gsub(title, pat="\\(|\\)| ", rep = "_")
  title <- gsub(title, pat="_+", rep = "_")
  #
  names(out) <- title
  out
}
