# formatData

Scripts to format lakes data.

## How to create csv files

I have used [`ssconvert`](https://linux.die.net/man/1/ssconvert) to convert
`xlsx` to `csv` files automatically. Some other files have been already saved
as `csv` files:

- `Hasnain_S1.csv`: Table S1 from Hasnain, Sarah S., Brian J. Shuter, and Charles K. Minns. “Phylogeny Influences the Relationships Linking Key Ecological Thermal Metrics for North American Freshwater Fish Species.” Edited by Dylan Fraser. Canadian Journal of Fisheries and Aquatic Sciences 70, no. 7 (July 2013): 964–72. https://doi.org/10.1139/cjfas-2012-0217.



## R

### R packages required

- `tidyverse`

### Import BSM data

```R
dfOntCur <- getOntCur('csvFiles/Ontario-Main.csv')
```

```R
dfFishCharact <- getHasnainS1('csvFiles/Hasnain_S1.csv')
```
