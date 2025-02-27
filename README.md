# PLPA_Repository
This is repository for PLPA class. I use it store my assignments and to try different tutorials.


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

