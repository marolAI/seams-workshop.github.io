---
slug: hpc
title: High Performance Computing
---

__Objectives__

By the end of this session participants shall be able to:

- identify what is parallelizable in a code
- see the benefits of parallelization from runtimes
- show understanding of IO choices to be made
- appreciate the use of GPUs
- demonstrate knowledge of hpc management systems
- do code testings and prototyping 
- demonstrate knowledge of hpc service providers

---

__Activities__

The activities to be undertaken during this practical session shall include the following.

- participants will be given serial codes and be asked to identified parallelizable parts of the code
- a runtime comparison of a serial code and its parallelized version
- a runtime comparison of multiple cores without GPUs and multi-cores with GPUs in Colab
- a demonstration of code testing / prototyping on a local machine / an interactive node
- a demonstration of job submission, qeueing, and management on CHPC
- participants experiment with other services providers like EC2, Azure, NVIDIA, AWS, etc
- participants experiment with HPC software like hadoop, mapreduce, and tensorflow

---

__Pre-requisites__

The above activities assume that this session is preceded by a discussion that includes the following

- how does the HPC computing model differ from computing on your local machine?  
- what do those differences mean for how you arrange your program? 
- the IO choices you make
- the different categories HPC infrastructures: clusters, and clouds 
- jargon / terminology: multi-cores, GPUs, cloud computing, MPI, etc
- HPC programming languages: CUDAC, Fortran, etc
