
# **R markdown_ Practice Coding**
## Student name: Pankaj Gaonkar
### Added comments for better understanding



```r
YAML example:

title: "R markdown _ PG"
author: "Pankaj"
date: "2025-02-27"
output:
  pdf_document:
  html_document:
    toc: true
    toc_float: true
  word_document:
  md_document:
    variant: gfm
```

## Notes:

Above line are YAML WE CAN CHANGE OUTPUT AS PER REQUIREMENT (E.G pdf,
wprd, html)

Example: output: html_document: toc: true \# gives headers toc_float:
true \# give header on side which we can use to navigate md_document:
variant: gfm word_document: pdf_document:

OR

md_document:  
variant: gfm \### for github\_\_the GitHub flavored markdown (gfm) .md
file for viewing on GitHub, and we can generate a Word document as well.

# R code chunk

``` r
#{r R  code example1, include=FALSE}   wont show code and output
#{r R  code example1, echo=FALSE}      wont show code but output will be showm

# this is R code
summary(mtcars)
```

    ##       mpg             cyl             disp             hp       
    ##  Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0  
    ##  1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  
    ##  Median :19.20   Median :6.000   Median :196.3   Median :123.0  
    ##  Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7  
    ##  3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  
    ##  Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0  
    ##       drat             wt             qsec             vs        
    ##  Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000  
    ##  1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000  
    ##  Median :3.695   Median :3.325   Median :17.71   Median :0.0000  
    ##  Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375  
    ##  3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000  
    ##  Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000  
    ##        am              gear            carb      
    ##  Min.   :0.0000   Min.   :3.000   Min.   :1.000  
    ##  1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  
    ##  Median :0.0000   Median :4.000   Median :2.000  
    ##  Mean   :0.4062   Mean   :3.688   Mean   :2.812  
    ##  3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  
    ##  Max.   :1.0000   Max.   :5.000   Max.   :8.000

This is how to include the figures

``` r
library(ggplot2)

data("mtcars")
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()
```

![](Coding_practice_Rmarkdown_files/figure-gfm/include%20the%20figures-1.png)<!-- -->

R markdown formatting options

# First level header

Example test

\*italics test

**bold text_between double astreix**

- one item
- another stuff

1.  one item
2.  another item

## Second level header

### Third level header

## Adding the clickable links

[Link to my GitHub](https://github.com/ppg0001/PLPA_Assignment)

## Images (Note can be relative pah or same directory)

<figure>
<img
src="C:/Users/panka/OneDrive%20-%20Auburn%20University/PLPA_class/shrek.jpg"
alt="Shrek" />
<figcaption aria-hidden="true">Shrek</figcaption>
</figure>

## Formatted tables

``` r
library("knitr")
kable(mtcars, digits = 3, format = "markdown")
```


|                     |  mpg | cyl |  disp |  hp | drat |    wt |  qsec |  vs |  am | gear | carb |
|:--------------------|-----:|----:|------:|----:|-----:|------:|------:|----:|----:|-----:|-----:|
| Mazda RX4           | 21.0 |   6 | 160.0 | 110 | 3.90 | 2.620 | 16.46 |   0 |   1 |    4 |    4 |
| Mazda RX4 Wag       | 21.0 |   6 | 160.0 | 110 | 3.90 | 2.875 | 17.02 |   0 |   1 |    4 |    4 |
| Datsun 710          | 22.8 |   4 | 108.0 |  93 | 3.85 | 2.320 | 18.61 |   1 |   1 |    4 |    1 |
| Hornet 4 Drive      | 21.4 |   6 | 258.0 | 110 | 3.08 | 3.215 | 19.44 |   1 |   0 |    3 |    1 |
| Hornet Sportabout   | 18.7 |   8 | 360.0 | 175 | 3.15 | 3.440 | 17.02 |   0 |   0 |    3 |    2 |
| Valiant             | 18.1 |   6 | 225.0 | 105 | 2.76 | 3.460 | 20.22 |   1 |   0 |    3 |    1 |
| Duster 360          | 14.3 |   8 | 360.0 | 245 | 3.21 | 3.570 | 15.84 |   0 |   0 |    3 |    4 |
| Merc 240D           | 24.4 |   4 | 146.7 |  62 | 3.69 | 3.190 | 20.00 |   1 |   0 |    4 |    2 |
| Merc 230            | 22.8 |   4 | 140.8 |  95 | 3.92 | 3.150 | 22.90 |   1 |   0 |    4 |    2 |
| Merc 280            | 19.2 |   6 | 167.6 | 123 | 3.92 | 3.440 | 18.30 |   1 |   0 |    4 |    4 |
| Merc 280C           | 17.8 |   6 | 167.6 | 123 | 3.92 | 3.440 | 18.90 |   1 |   0 |    4 |    4 |
| Merc 450SE          | 16.4 |   8 | 275.8 | 180 | 3.07 | 4.070 | 17.40 |   0 |   0 |    3 |    3 |
| Merc 450SL          | 17.3 |   8 | 275.8 | 180 | 3.07 | 3.730 | 17.60 |   0 |   0 |    3 |    3 |
| Merc 450SLC         | 15.2 |   8 | 275.8 | 180 | 3.07 | 3.780 | 18.00 |   0 |   0 |    3 |    3 |
| Cadillac Fleetwood  | 10.4 |   8 | 472.0 | 205 | 2.93 | 5.250 | 17.98 |   0 |   0 |    3 |    4 |
| Lincoln Continental | 10.4 |   8 | 460.0 | 215 | 3.00 | 5.424 | 17.82 |   0 |   0 |    3 |    4 |
| Chrysler Imperial   | 14.7 |   8 | 440.0 | 230 | 3.23 | 5.345 | 17.42 |   0 |   0 |    3 |    4 |
| Fiat 128            | 32.4 |   4 |  78.7 |  66 | 4.08 | 2.200 | 19.47 |   1 |   1 |    4 |    1 |
| Honda Civic         | 30.4 |   4 |  75.7 |  52 | 4.93 | 1.615 | 18.52 |   1 |   1 |    4 |    2 |
| Toyota Corolla      | 33.9 |   4 |  71.1 |  65 | 4.22 | 1.835 | 19.90 |   1 |   1 |    4 |    1 |
| Toyota Corona       | 21.5 |   4 | 120.1 |  97 | 3.70 | 2.465 | 20.01 |   1 |   0 |    3 |    1 |
| Dodge Challenger    | 15.5 |   8 | 318.0 | 150 | 2.76 | 3.520 | 16.87 |   0 |   0 |    3 |    2 |
| AMC Javelin         | 15.2 |   8 | 304.0 | 150 | 3.15 | 3.435 | 17.30 |   0 |   0 |    3 |    2 |
| Camaro Z28          | 13.3 |   8 | 350.0 | 245 | 3.73 | 3.840 | 15.41 |   0 |   0 |    3 |    4 |
| Pontiac Firebird    | 19.2 |   8 | 400.0 | 175 | 3.08 | 3.845 | 17.05 |   0 |   0 |    3 |    2 |
| Fiat X1-9           | 27.3 |   4 |  79.0 |  66 | 4.08 | 1.935 | 18.90 |   1 |   1 |    4 |    1 |
| Porsche 914-2       | 26.0 |   4 | 120.3 |  91 | 4.43 | 2.140 | 16.70 |   0 |   1 |    5 |    2 |
| Lotus Europa        | 30.4 |   4 |  95.1 | 113 | 3.77 | 1.513 | 16.90 |   1 |   1 |    5 |    2 |
| Ford Pantera L      | 15.8 |   8 | 351.0 | 264 | 4.22 | 3.170 | 14.50 |   0 |   1 |    5 |    4 |
| Ferrari Dino        | 19.7 |   6 | 145.0 | 175 | 3.62 | 2.770 | 15.50 |   0 |   1 |    5 |    6 |
| Maserati Bora       | 15.0 |   8 | 301.0 | 335 | 3.54 | 3.570 | 14.60 |   0 |   1 |    5 |    8 |
| Volvo 142E          | 21.4 |   4 | 121.0 | 109 | 4.11 | 2.780 | 18.60 |   1 |   1 |    4 |    2 |




## **Organizing a repository and editing a readme using Markdown**

# PLPA_Repository

This is repository for PLPA class. I use it store my assignments and to
try different tutorials.

# DOI

[![DOI](https://zenodo.org/badge/924493573.svg)](https://doi.org/10.5281/zenodo.14935003)

## **Organizing a repository and editing a readme using Markdown**

#### Instead of dummy I will arrange this repository

- [Click here to visit the
  Repository](https://github.com/ppg0001/PLPA_Assignment) Note: This is
  my regular repository I use for class assignments.

### **Link to analysis**

- [Analysis 1](Coding_practice_Rmarkdown.md)

Note: can add more links to the analysis by adding respective relative
paths. So it is organized with clickable links to analysis.

### **File Tree**

Use package fs for file tree (In terminal: install.packages(“fs”)

**Code:** fs::dir_tree()  
Note: This will print the directory structure since I am in my root
directory. OR can specify the directory path in brackets.

``` r
install.packages("fs")
fs::dir_tree()
```

To add text in box use: forward single quotes **\`\`\`** Note good habit
to describe folders/file in the below structure (example#)

    ── Coding Pracitce Assignment2_Datavis1    #Assignment2 folder
    │   ├── Assignment_DataVis1.docx
    │   ├── Assingmner_DataVis2.pdf
    │   ├── Bull_richness.csv                 # Raw data for analysis for assignment2
    │   └── Coding_Assignment2_DataVis.R
    ├── Coding Practice Assignment1_Intro     #Assignment folder
    │   ├── PLPA_assignment_R1.R
    │   └── TipsR.csv
    ├── CodingChalleng3_AdvancedVis.R
    ├── CodingChallenge2_IntroDataVis.R
    ├── Coding_Challenge1_Assignment_.R
    ├── Coding_practice_Rmarkdown.html
    ├── Coding_practice_Rmarkdown.md
    ├── Coding_practice_Rmarkdown.Rmd
    ├── Coding_practice_Rmarkdown_files
    │   └── figure-gfm
    │       └── include the figures-1.png
    ├── Dummy_markdown_repo_edit_PG.Rmd
    ├── MycotoxinData.csv
    ├── PLPA_Assignment.Rproj                  # Top level directory .Rproj file = Working directory
    ├── README.html
    ├── README.md                             #Top level directory README
    └── shrek.jpg

### **Zendo**

DOI created by zenodo:
[![DOI](https://zenodo.org/badge/924493573.svg)](https://doi.org/10.5281/zenodo.14935003)
