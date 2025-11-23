#!/bin/bash
# Node Health Check Script
# Author  : Anil Kumar Kathoju
# Date    : 27th Sep 2025
# Version : V1

set -x
=============echo " file system usage"================
df -h
================echo " memory usage"================
free -m
================echo " cpu allocated"================
nproc
================echo " system usage with memory or cpu"================
top


