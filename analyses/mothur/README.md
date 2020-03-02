Groundwater Microbiomes Mothur README and Notes
---

# Change Log

*2020/02/27*
scp ./200109_UNC22_0648_000000000-CW5WN.tar rosalind:~/GW/raw/
tar -xvf 200109_UNC22_0648_000000000-CW5WN.tar
scp ./GWQ* rosalind:~/GW/analysis/
scp ./DatabaseDownloand.sh rosalnd:~/SILVA_dbs/
./DatabaseDownloand.sh

## Make .files file
ls ./GWQ*.fq.gz > ../analysis/GWQ.files
scp rosalind:~/GW/analysis/GWQ.files ./
% Edit locally
scp ./GWQ.files rosalind:~/GW/analysis/


## Initial Test
I ran through all of the steps in batch. I changed a few. 
Only major update is that I'm doing all of the classification via silva which now has more mito and chloro


mothur > summary.seqs(fasta=GWQ.trim.contigs.trim.good.unique.good.filter.unique.precluster.pick.pick.fasta, count=GWQ.trim.contigs.trim.good.unique.good.filter.unique.precluster.denovo.vsearch.pick.pick.count_table)

Using 8 processors.

                Start   End     NBases  Ambigs  Polymer NumSeqs
Minimum:        1       1201    335     0       3       1
2.5%-tile:      1       1206    354     0       4       74142
25%-tile:       1       1206    356     0       4       741415
Median:         1       1206    358     0       5       1482829
75%-tile:       1       1206    358     0       6       2224243
97.5%-tile:     1       1206    362     0       6       2891516
Maximum:        11      1206    384     0       8       2965657
Mean:   1       1205    357     0       4
# of unique seqs:       288957
total # of seqs:        2965657

It took 7 secs to summarize 2965657 sequences.

New batch file saved and uploaded:  scp GWQ.batch rosalind:~/GW/analysis/

## Batch RUN
mothur GWQ.batch