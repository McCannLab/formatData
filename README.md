# formatData

Scripts to format various data.

## How to create csv files

[`ssconvert`](https://linux.die.net/man/1/ssconvert) is called to automatically
convert`xlsx` files to `csv`. Some other files have already been saved as `csv`
files:

- `Hasnain_S1.csv`: Table S1 from Hasnain, Sarah S., Brian J. Shuter, and Charles K. Minns. “Phylogeny Influences the Relationships Linking Key Ecological Thermal Metrics for North American Freshwater Fish Species.” Edited by Dylan Fraser. Canadian Journal of Fisheries and Aquatic Sciences 70, no. 7 (July 2013): 964–72. https://doi.org/10.1139/cjfas-2012-0217.



## R

### R packages required

So far only functions in `base` have been used; additional packages required
in future function will be listed below.

### Import data - examples

```R
dfOntCur <- getOntCur('pathXX/csvFiles/Ontario-Main.csv')
```

```R
source('R/getHasnainS1.R')
dfFishCharact <- getHasnainS1('csvFiles/Hasnain_S1.csv')
save(dfFishCharact, file = 'dfFishCharact.rda', compress = 'xz')
```
