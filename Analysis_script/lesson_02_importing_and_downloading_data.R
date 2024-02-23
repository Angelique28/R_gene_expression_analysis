# ==========================================================
#
#      •   Importing data from Excel
#      •   Downloading from UCSC
#      •   Downloading from ENSEMBL
#      •   Downloading from ENCODE
#
# ==========================================================

# Reference paper: "Gene expression profiling of breast cell lines identifies potential new basal markers". Supplementary table 1
	


filename <- "Analysis_script/micro_array_results_table1.txt"

micro_array_data <- read.csv(filename, sep="\t", header=TRUE)
head(micro_array_data)



# Data Sources:
# UCSC -- RefSeq genes from table browser
# Ensembl -- Mouse regulatory features MultiCell
# ENCODE -- HMM: wgEncodeBroadHmmGm12878HMM.bed


genes <- read.csv("Analysis_script/RefSeq_Genes.txt", sep="\t", header=TRUE)
head(genes)
dim(genes)



regulatory_features <- read.csv("Analysis_script/RegulatoryFeatures_MultiCell.gff", sep="\t", header=FALSE)
head(regulatory_features)
dim(regulatory_features)



chromHMM <- read.csv("Analysis_script/wgEncodeBroadHmmGm12878HMM.bed", sep="\t", header=FALSE)
head(chromHMM)
dim(chromHMM)

#lesson 3

head(my_data)
dim(my_data)

# 5 number summary basic statistics

summary(my_data$chrom)
summary(my_data$stop)

#create new column 

my_data$size = my_data$stop - my_data$start


