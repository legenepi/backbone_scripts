#!/bin/bash

#PBS -N retrieve_rsid
#PBS -j oe
#PBS -o retrieve_rsid_log
#PBS -l walltime=2:0:0
#PBS -l vmem=50gb
#PBS -l nodes=1:ppn=1
#PBS -d .
#PBS -W umask=022

#run a job: qsub job.sh

#run a job with for cicle: qsub -t 1-22 job.sh ###check if a or t !
