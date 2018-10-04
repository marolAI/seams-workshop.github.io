---
slug: hpc
title: High Performance Computing
---

## Recap:

In the discussion session, we covered the following ideas:

- how does the HPC computing model differ from computing on your local machine?  
- what do those differences mean for how you arrange your program?
- the IO choices you make
- the different categories HPC infrastructures: clusters, and clouds 
- jargon / terminology: multi-cores, GPUs, cloud computing, MPI, etc
- HPC programming languages: CUDAC, Fortran, etc

## Objectives

By the end of this session participants shall be able to:

- identify what is parallelizable in a code
- see the benefits of parallelization from runtimes
- show understanding of IO choices to be made
- appreciate the use of GPUs
- demonstrate knowledge of hpc management systems
- do code testings and prototyping 
- demonstrate knowledge of hpc service providers

## Activities

The activities to be undertaken during this practical session shall include the following.

- participants will be given serial codes and be asked to identified parallelizable parts of the code (maybe as pseudocode?)
- a demonstration of job submission, queuing, and management on CHPC
- a runtime comparison of a serial code and its parallelized version (pre written simple-ish code in multiple languages, with a timing checkpoints in place, comments indicating rough "change here")
- a demonstration of code testing / prototyping on a local machine / an interactive node (pre-written that works on local machine, but not when multi-thread or hpc / multinode setting?  suggests a race-condition error, thread locking, or IO collision error)
- a runtime comparison of multiple cores without GPUs and multi-cores with GPUs in Colab (can find an online tutorial? re-purpose a bit for us?)
- participants experiment with HPC software like tensorflow, hadoop, and mapreduce (can find an online tutorial? re-purpose a bit for us?)
- participants experiment with other services providers like EC2, Azure, NVIDIA, AWS, etc (can find an online tutorial? re-purpose a bit for us?)

## Logistics Notes

- Pre-arranged accounts
- Confirm workshop access (e.g., SSH issues?)