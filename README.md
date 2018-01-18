# formatData

Scripts to format lakes data.

## How to create csv files

I have used [`ssconvert`](https://linux.die.net/man/1/ssconvert) to convert
`xlsx` to `csv` files automatically.


## R

### R packages required

- `tidyverse`

### Import BSM data

```R
dfOntCur <- getOntCur('csvFiles/Ontario-Main.csv')
```
