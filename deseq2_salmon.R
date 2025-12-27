library(tximport)
library(DESeq2)

samples <- read.table("samples.tsv", header=TRUE)
files <- file.path(samples$path, "quant.sf")
names(files) <- samples$sample

txi <- tximport(files, type="salmon", txOut=TRUE)

dds <- DESeqDataSetFromTximport(
  txi,
  colData = samples,
  design = ~ condition
)

dds <- DESeq(dds)
res <- results(dds)

write.csv(as.data.frame(res), "Output/RNAseq/DEGs_LS_vs_ES.csv")
