
[![Travis build
status](https://travis-ci.com/muschellij2/biostatmethods.svg?branch=master)](https://travis-ci.com/muschellij2/biostatmethods)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/github/muschellij2/biostatmethods?branch=master&svg=true)](https://ci.appveyor.com/project/muschellij2/biostatmethods)
[![Coverage
status](https://coveralls.io/repos/github/muschellij2/biostatmethods/badge.svg?branch=master)](https://coveralls.io/r/muschellij2/biostatmethods?branch=master)
<!-- README.md is generated from README.Rmd. Please edit that file -->

# biostatmethods Package:

The goal of `biostatmethods` is to provide accompanying code and data
from the book [“Methods in Biostatistics with
R”](https://leanpub.com/biostatmethods).

## Accessing the Data

All the data from the book is located in the `inst/extdata` folders. If
you would like to download these, they can be accessed from
<http://johnmuschelli.com/>. For example:

<http://johnmuschelli.com/biostatmethods/inst/extdata/bmi_age.txt>
<http://johnmuschelli.com/biostatmethods/inst/extdata/NIfTI/FLAIR.nii.gz>

should be links that will download the data (if you click Save As).

## Data Inside the Package

If you want to access the data from the book, there is a simple function
`biostat_data` that will return the filenames of these files.

``` r
library(biostatmethods)
biostat_data("bmi_age.txt")
biostat_data("FLAIR.nii.gz")
```

One of the reasons that we included these as files rather than attached
them into the package is that we believe data importing is one of the
most important parts of data analysis and would like readers to get
comfortable with that, whether it be a text file or a brain image.

## Installation

You can install `biostatmethods` from GitHub with:

``` r
# install.packages("remotes")
remotes::install_github("muschellij2/biostatmethods")
```
