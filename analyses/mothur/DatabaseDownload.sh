#!/bin/bash

wget https://mothur.org/w/images/3/32/Silva.nr_v132.tgz
tar -xzvf Silva.nr_v132.tgz

wget https://mothur.org/w/images/f/f1/Silva.gold.bacteria.zip
unzip -j Silva.gold.bacteria.zip

wget https://mothur.org/w/images/c/c3/Trainset16_022016.pds.tgz
tar -xzvf  Trainset16_022016.pds.tgz

mothur "#pcr.seqs(fasta=silva.nr_v132.align, start=10000, end=32000, keepdots=F, processors=1)"
mv silva.nr_v132.pcr.align silva.v4v5.fasta
