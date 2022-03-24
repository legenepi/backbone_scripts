# backbone_scripts
Repository with backbone for scripts, such as .R, .Rmd, .sh, .py, .awk etc.

Here, you can find a brief description for each document:

**PBS_scheduler.sh**<br/>
Template to run a job in a cluster with the PBS job scheduler;

**retrieve_rsid.awk**<br/>
Template to use awk syntax to match two files and print only matching lines to merge them and obtain a dataframe with more columns. In this case, the example use chromosome and position as matching column to retrieve the rsid column;
 
**template.r**<br/>
Template to use r language to import dataframe. Basic dataframe handling with tidyverse library;

**template.Rmd**<br/>
Template to write .Rmd file and do wonderful report ! (still very skinny, happy if you wan to add content/tips !!)

**template.python.py**<br/>
Template python with basic operations: sys.argv, open close file, pandas dataframe. Data collated from https://qcbsciprolab2019.readthedocs.io/en/latest/practical8.html#Loading-data-from-external-files

**venv_env.sh**<br/>
Commands to create and activate a venv environment
