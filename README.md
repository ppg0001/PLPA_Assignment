# PLPA_Repository
This is repository for PLPA class. I use it store my assignments and to try different tutorials.

# For coding challenge 4

## File tree

```
.
├── Coding Pracitce Assignment2_Datavis1
│   ├── Assignment_DataVis1.docx
│   ├── Assingmner_DataVis2.pdf
│   ├── Bull_richness.csv
│   └── Coding_Assignment2_DataVis.R
├── Coding Practice Assignment1_Intro
│   ├── PLPA_assignment_R1.R
│   └── TipsR.csv
├── CodingChalleng3_AdvancedVis.R
├── CodingChallenge2_IntroDataVis.R
├── Coding_Challenge1_Assignment_.R
├── Coding_challenge_4                  #ASSIGNMENT4 Main FOLDER
│   ├── Coding_challenge_markdown.md
│   └── Coding_challenge_markdown.pdf
├── Coding_challenge_markdown.html
├── Coding_challenge_markdown.md
├── Coding_challenge_markdown.pdf
├── Coding_challenge_markdown.Rmd
├── Coding_challenge_markdown_files
│   └── figure-gfm
│       ├── P1-1.png
│       ├── P2-1.png
│       └── P3-1.png
├── Coding_practice_Rmarkdown.html
├── Coding_practice_Rmarkdown.md
├── Coding_practice_Rmarkdown.Rmd
├── Coding_practice_Rmarkdown.tex
├── Coding_practice_Rmarkdown_files
│   └── figure-gfm
│       └── include the figures-1.png
├── Dummy_markdown_repo_edit_PG.Rmd
├── MycotoxinData.csv
├── PLPA_Assignment.Rproj
├── README.html
├── README.md
└── shrek.jpg
```

## A clickable link in your README to your GitHub flavored .md file


[Readme.md Click me](https://github.com/ppg0001/PLPA_Assignment/blob/main/Coding_challenge_4/Coding_challenge_markdown.md)

[Clickable link to GitHub main Repository](https://github.com/ppg0001/PLPA_Assignment/tree/main)


----------------------------------------------------------------------------------------------------------


# Other

# DOI
[![DOI](https://zenodo.org/badge/924493573.svg)](https://doi.org/10.5281/zenodo.14935003)

## **Organizing a repository and editing a readme using Markdown**
#### Instead of dummy I will arrange this repository
- [Click here to visit the Repository](https://github.com/ppg0001/PLPA_Assignment)
Note: This is my regular repository I use for class assignments.

### **Link to analysis**

- [Analysis 1](Coding_practice_Rmarkdown.md)

Note: can add more links to the analysis by adding respective relative paths. So it is organized with clickable links to analysis.


### **File Tree**
Use package fs for file tree (In terminal: install.packages("fs")

**Code:**  fs::dir_tree()  
Note: This will print the directory structure since I am in my root directory. OR can specify the directory path in brackets.

```r
install.packages("fs")
fs::dir_tree()
```


To add text in box use:   forward single  quotes **```**
Note good habit to describe folders/file in the below structure (example#)


```
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
```


### **Zendo**

DOI created by zenodo:
[![DOI](https://zenodo.org/badge/924493573.svg)](https://doi.org/10.5281/zenodo.14935003)



