# PLPA 6820 Principles and techniques of reproducible science
This is a repository for the PLPA6820 class - **Final Project**.

## Repository Structure
### File tree
```
├── Final_Project                         # FINAL PROJECT FOLDER WITH ALL THE INPUT AND OUTPUT FILES
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
├── PLPA_Assignment.Rproj                 # R project file
├── README.html
└── README.md

```

# Final Project

This script is designed for the analysis of the Shotgun_POULTRY microbiome data. This script contains the statistical analysis, exploratory plots and publication plots. Each step of the analysis is discussed at my best capabilities. **Link to analysis:** [R codes- .Rmd file](https://github.com/ppg0001/PLPA_Assignment/blob/main/Final_Project/Final_Project_Pankaj.Rmd)  &  [R codes- .md file](https://github.com/ppg0001/PLPA_Assignment/blob/main/Final_Project/Final_Project_Pankaj.md)

NOTE: This document is for class purpose and is intended to be updated

# Title: Microbiome profile in different stages of commercial poultry environment

## 1. INTRODUCTION
The demand for producing animal protein has increased worldwide. In consequence, there is an increased in the need of AMU to prevent and treat animal diseases which have contributed to the increase in  AMR and its spread.Because of concerns with AMR,  the animal production industry has promoted reducing AMU to mitigate AMR. However, because of the extensive historic use of antimicrobial in farm, antimicrobial residues might have accumulated in these environments, contributing to the maintenance of AMR. In this study, we explore the microbiome diversity in different stages of production. This is the part of bigger study we are doing. For this class final project we will explore how the poultry microbiome dynamics in the different production stages (Pullet -> Breeder -> Broiler) and farm environment (Litter and Soil).

## 2. HYPOTHESIS
We have litter sample representing inside environment and soil representing outside environment. We anticipate selective pressure in the inside environment and in the broiler stage because of antimicrobial pressure. So higher antimicrobial pressure in litter samples and broiler stage might influence the microbial dynamics.

## 3. OBJECTIVE
 ***Reconstruct the microbiome of poultry farm environment (litter,soil) using shotgun metagenomics***

## 4. METHODS

### 4.1. Experimental design
To evaluate AMR across different stages of poultry production, we conducted a systematic sampling of poultry farm environments from two poultry complexes in southeast USA and from three production stages: pullet (n=4), breeder (n=8), and broiler (n=14). Farms were selected to represent at least 10% of the poultry farms from each production complex. This approach ensured adequate representation of the production system

### 4.2. Sample types
 - Farm types: Pullet, breeder, broiler, processing plant
 - Sample types: Litter, soil, post pick, post chill, fecal
 - Samples to *exclude* in this analysis: Processing plant, post pick, post chill, fecal

### 4.3. Sample naming convention
- Sample ID convention to identify sequencing groups
    - C: collection number
    - F: followed by farm number OR farm name.
      - Example:
      - F8: farm number eight
      - FHE: farm named HE
- Letter at end: sample types
          - L: litter, S: soil
- Example:
    - C2F8L: collection 2, farm number 8, litter sample
    - C17FHEL: collection 17, farm name HE, litter sample
    - Note in sample_metadata in some samples they end with number 1,2,or3. They are the triplicate sample we used initially for shotgun sequencing standardization.
- Note: Fecal samples and processing plant samples are excluded from current analysis.

### 5. Whole genome sequencing and bioinformatics analysis
### 5.1. DNA sequencing and processing
- The DNA was pair-end sequenced in an Illumina platform. The generated reads were quality checked with FAstQC v0.12.1. 
- Reads were processed using Trimmomatic to the following parameters:
  Adapter clipping: universal Illumina adapter, End trimming to quality phred 30, Exclusion of resulting reads shorted than 50bp
- After processing, the reads were again quality checked using FastQC
          
### 5.2. Microbiome reconstruction with MetaPhlAn4
*MetaPhlAn is a computational tool for profiling the composition of microbial communities (Bacteria, Archaea and Eukaryotes) from metagenomic shotgun sequencing data with species-level.*
- software/package: MetaPhLAn 4
- publication: https://www.nature.com/articles/s41587-023-01688-w
- git: https://github.com/biobakery/MetaPhlAn/wiki/MetaPhlAn-4.1
- version: 4.0.2                  

### 5.3. Alpha diversity analysis
Alpha diversity indices, including Observed Richness and Simpson’s and Shannon’s diversity index, were calculated for litter and soil samples across pullet, breeder, and broiler farms at taxon level. A t-test was performed to compare the alpha diversity between litter and soil samples in respective farm types. 

### 5.4. Beta diversity analysis
Beta diversity was assessed to examine the compositional difference in microbial communities (taxon level) across the farm types and sample types. Principal Coordinate Analysis (PCoA) was performed using robust  Aitchison distance index , with statistical significance determined by PERMANOVA. Robust Aitchison distances were employed due to their suitability for non-negative datasets, including zero. PERMANOVA was used to compare the microbial and resistome composition among sample types and farm types.

*All the statistical analyses were performed using RStudio, version 4.3.1 (2023-06-16 ucrt). All significance levels were set to P ≤ 0.05.*


## 6. RESULTS

### 6.1. Alpha Diversity
[Click Here: Figure Alpha Diversity](https://github.com/ppg0001/PLPA_Assignment/blob/main/Final_Project/Alpha_Diversity_Plots.svg)

All alpha diversity indices were statistically significantly higher (P < 0.05) in soil than in litter, with some exceptions in some farm types. Observed richness was significantly higher in soil compared to litter in pullet and broiler farms (P < 0.05), while no statistically significant difference was observed in breeder farms. A similar trend was observed for Simpson’s diversity index, where pullet and broiler farms exhibited a significant difference between litter and soil (P < 0.05), whereas breeder farms did not. Shannon diversity index was significantly higher in soil compared to litter across all farm types (P < 0.05).
These findings indicate that soil contains a more diverse and evenly distributed microbiome, whereas litter is a more selective environment with limited microbes that make up its composition.


### 6.2. Microbial community (Phylum level)
[Click Here: Figure Microbiome Profile - Phylum](https://github.com/ppg0001/PLPA_Assignment/blob/main/Final_Project/Relative_abundance_Plots.svg)

Here, we have a snapshot of microbial community and their composition from different farm types and sample types. Soil has a higher diversity of phyla compared to Litter. Firmicutes is dominant in Litter. Actinobacter dominant in soil Firmicutes increases along the production chain, with being highest in broiler farm stage.

*Note: For the class project, I only explored the phylum level, but eventually, I will be exploring the  genus and species levels for a better understanding of microbial dynamics.*


### 6.3. Beta Diversity
[Click Here: Figure Alpha Diversity](https://github.com/ppg0001/PLPA_Assignment/blob/main/Final_Project/Combined_PCoA_plots_betadiversity.svg)

Evidence of microbiome clustering by sample type was observed in PCoA plots, suggesting that litter and soil samples are significantly different from each other (PERMANOVA: P=0.001). Furthermore, clustering by farm types revealed significant differences across different stages of production (PERMANOVA: P=0.001). Pullet and breeder farms clustered together and had no statistically different microbial composition (P = 0.059). Broiler farms formed a distinct cluster and the microbial composition was statistically different than pullet and breeder farms (PERMANOVA: P = 0.001). 


# 7. Other links
- [Click here to visit the GitHub Repository](https://github.com/ppg0001/PLPA_Assignment)
 
- [Click here to go to GitHub flavored .md file](https://github.com/ppg0001/PLPA_Assignment/blob/main/Final_Project/Final_Project_Pankaj.md)
  
- [Click here to go to Analysis/R codes(.Rmd file)](https://github.com/ppg0001/PLPA_Assignment/blob/main/Final_Project/Final_Project_Pankaj.Rmd)
