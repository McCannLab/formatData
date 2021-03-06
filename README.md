# formatData

Scripts to format various data.

## How to create csv files

[`ssconvert`](https://linux.die.net/man/1/ssconvert) is called to automatically
convert `xlsx` files to `csv`. Some other files have already been saved as `csv`
files:

- `Hasnain_S1.csv`, `Hasnain_S6.csv`: Table S1 and S6 respectively from Hasnain, Sarah S., Brian J. Shuter, and Charles K. Minns. “Phylogeny Influences the Relationships Linking Key Ecological Thermal Metrics for North American Freshwater Fish Species.” Edited by Dylan Fraser. Canadian Journal of Fisheries and Aquatic Sciences 70, no. 7 (July 2013): 964–72. https://doi.org/10.1139/cjfas-2012-0217.


## About txtFiles

For some files, data were retrieved from `pdf` files. In such case, it is very
convenient to first turn the `pdf` into a `txt` files, then purge not relevant data
and finally create a small piece of code to get data. regarding the first step
`pdftotext -layout`.

- `Casselman2005_A1.txt`: summary of findings from catch-and-release studies,
appendix 1 of Casselman and Stephen (2005); available on line at
https://www.ontario.ca/document/catch-and-release-fish-handling
Casselman, Stephen J, Ontario, and Fish and Wildlife Branch. Catch-and-Release Angling: A Review with Guidelines for Proper Fish Handling Practices. Peterborough, Ont.: Fish & Wildlife Branch, 2005.


## R

### R packages required

- `magrittr`
- `letiRmisc` see https://github.com/inSileco/letiRmisc
- `taxize`
- `rfishbase`

### Import data - examples

```R
dfOntCur <- getOntCur(file = 'pathXX/csvFiles/Ontario-Main.csv')
```

- Table S1

```R
source('R/getHasnainS1.R')
df_hasnain <- getHasnainS1('csvFiles/Hasnain_S1.csv')
save(df_hasnain, file = 'df_hasnain.rda', compress = 'xz')
# saveRDS(df_hasnain, "df_hasnain.rds")
```


- Table S6 includes Reproductive Guild

```R
source('R/getHasnainS6.R')
df_hasnain_S6 <- getHasnainS6('csvFiles/Hasnain_S6.csv')
save(df_hasnain_S6, file = 'df_hasnain_S6.rda', compress = 'xz')
# saveRDS(df_hasnain_S6, "df_hasnain_S6.rds")
```



```R
source('R/getCasselmanA1.R')
dfCasselmanA1 <- getCasselmanA1(file = "txtFiles/Casselman2005_A1.txt")
save(dfCasselmanA1, file = 'dfCasselmanA1.rda', compress = 'xz')
```
