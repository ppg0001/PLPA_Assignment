# PLPA 6820 Principles and techniques of reproducible science
This is a repository for the PLPA6820 class. Including Final Project.

## Repository Structure
### File tree
    Final Project: All files related to the final project of class
    Other Class Assignment: All practice and coding challenges assignments
```
├── Final_Project                                    # FINAL PROJECT FOLDER WITH ALL THE INPUT AND OUTPUT FILES
│   ├── AlphaDiversity_ttest.txt
│   ├── Alpha_Diversity_Plots.svg
│   ├── Alpha_Divertsity_descriptive_stats.csv
│   ├── Combined_PCoA_plots_betadiversity.svg
│   ├── combined_plot_relative_abundance_bacteria
│   ├── Final_Project_Pankaj.Rmd
│   ├── Microbiome_RelAb.tsv
│   ├── PERMANOVA_Overall_Results.txt
│   ├── Phycount_div_each_sample.csv
│   ├── Relative_abundance_Plots.svg
│   ├── Sample_metadata.tsv
│   ├── specific_Pairwise_Comparissions_PERMANOVA.txt
│   └── Taxonomy_metadata.tsv
├── Other_Class_Assignments                          # All practice and coding challenges assignments
├── PLPA_Assignment.Rproj
├── README.html
└── README.md

```

# Final Project

This script is designed for the analysis of the Shotgun_POULTRY microbiome data. This script contains the statistical analysis, exploratory plots and publication plots. Each step of the analysis is discussed at my best capabilities. **Link to analysis**[Analysis_.md file](ADD LINK TO .R) ,  [Analysis_.md file](ADD LINK TO .R)
NOTE: This document is for class purpose and is intended to be updated

# Title: Microbiome profile in different stages of commercial poultry environment

## INTRODUCTION
The demand for producing animal protein has increased worldwide. In consequence, there is an increased in the need of AMU to prevent and treat animal diseases which have contributed to the increase in  AMR and its spread.Because of concerns with AMR,  the animal production industry has promoted reducing AMU to mitigate AMR. However, because of the extensive historic use of antimicrobial in farm, antimicrobial residues might have accumulated in these environments, contributing to the maintenance of AMR. In this study, we explore the microbiome diversity in different stages of production. This is the part of bigger study we are doing. For this class final project we will explore how the poultry microbiome dynamics in the different production stages (Pullet -> Breeder -> Broiler) and farm environment (Litter and Soil).

## HYPOTHESIS
We have litter sample representing inside environment and soil representing outside environment. We anticipate selective pressure in the inside environment and in the broiler stage because of antimicrobial pressure. So higher antimicrobial pressure in litter samples and broiler stage might influence the microbial dynamics.

## OBJECTIVES (For this final project)
 **Reconstruct the microbiome of poultry farm environment (litter,soil) using shotgun metagenomics**

## EXPERIMENTAL DESIGN
To evaluate AMR across different stages of poultry production, we conducted a systematic sampling of poultry farm environments from two poultry complexes in southeast USA and from three production stages: pullet (n=4), breeder (n=8), and broiler (n=14). Farms were selected to represent at least 10% of the poultry farms from each production complex. This approach ensured adequate representation of the production system

## SAMPLE TYPES
 Farm types: Pullet, breeder, broiler, processing plant
 Sample types: Litter, soil, post pick, post chill, fecal
 Samples to *exclude* in this analysis: Processing plant, post pick, post chill, fecal

## Sample Naming convention
Sample ID convention to identify sequencing groups
      --> C: collection number
      --> F: followed by farm number OR farm name.
          Example:
          F8: farm number eight
          FHE: farm named HE
      --> Letter at end: sample types
          L: litter, S: soil
      --> Example:
          C2F8L: collection 2, farm number 8, litter sample
          C17FHEL: collection 17, farm name HE, litter sample
      --> Note in sample_metadata in some samples they end with number 1,2,or3. They are the triplicate sample we used initially for shotgun sequencing standardization.

Note: Fecal samples and processing plant samples are excluded from current analysis.










# Other
## A clickable link in your README to your GitHub flavored .md file


[Readme.md Click me](https://github.com/ppg0001/PLPA_Assignment/blob/main/Coding_challenge_4/Coding_challenge_markdown.md)

[Clickable link to GitHub main Repository](https://github.com/ppg0001/PLPA_Assignment/tree/main)

## Repository link
- [Click here to visit the Repository](https://github.com/ppg0001/PLPA_Assignment)

### **Link to analysis**
- [Analysis 1](Coding_practice_Rmarkdown.md)
