# FastHASH Algorithm
- [FastHASH Algorithm](#fasthash-algorithm)
  - [Background](#background)
    - [What is Genome Sequencing?](#what-is-genome-sequencing)
  - [Introduction](#introduction)
- [Usage](#usage)
  - [Setup the environment](#setup-the-environment)
- [Note:](#note)
## Background

### What is Genome Sequencing?

**Genome Sequencing is a process of finding the complete sequence of A, C, G, T’s in DNA (or RNA).** \
The problem is that there is no machine that takes complete long DNA as an input, and gives the complete sequence as output. All sequencing machines chop the input DNA into pieces called Reads and output the sequence of these small pieces but not how these small pieces fit togather, so it is up to us to figure out how these small pieces (or Reads) fit togather.\
There are many genomic assambly algorithms out there but the two many types are

- **Read Mapping** \
   method of aligning the reads against a known reference genome to detect matches and variations. For example
  - mrFAST
  - FastHASH \
    are the algorithms which implement Read mapping concepts to sequence a DNA.
- **De novo Assembly**\
   method of merging the reads in order to construct the original sequence. For example
  - De Bruijn graph assambly \
    is the algorithms which implement De novo assembly concepts to sequence a DNA.

## Introduction

mrFAST belongs to the Read mapping catagory which uses hash tabels to assemble genome.\
By adding

- Fast filtring
- Cheap k-mer selection \
  improvments to mrFAST algorithm we got a new algorithm **FastHASH**.

# Usage
## Setup the environment
 - Setup Environment
run follwing command to setup anaconda environment with all the required pakages.  
`conda env create --file environment.yml`  
 - activate the environment by following command  
  `conda activate fyp_env`

For testing or debugging purpose a small dataset is present in ./Data

# Note:

This repository contain implementation of FastHASH algorithm in C and Python language.\
**C language implementation is taken from https://github.com/BilkentCompGen/mrfast**
