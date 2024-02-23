# ==========================================================
#
#      •   Removing "chr" prefixes
#      •   Getting chromosomes in the right order
#      •   Filtering out excess data
#      •   Renaming categories
#
# ==========================================================


library(ggplot2)

filename <- "Lesson-04/Encode_HMM_data.txt"

# Select a file and read the data into a data-frame
my_data <- read.csv(filename, sep="\t", header=FALSE)

# Relabel column
names(my_data)[1:4] <- c("chrom","start","stop","type")


# Remove the "chr" prefix
my_data$chrom <- factor(gsub("chr", "", my_data$chrom))
summary(factor(gsub("chr", "", my_data$chrom)))


# levels = possibilities/categories

# See the result
summary(my_data$chrom)

ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()

# Reorder the chromosomes numerically
seq(1,22)
c(seq(1,22),"X","Y")

my_data$chrom <- factor(my_data$chrom, levels=c(seq(1,22),"X","Y"))

summary(my_data$chrom)

ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()


# Filter chosen types
my_data <- my_data[my_data$type %in% c("1_Active_Promoter","4_Strong_Enhancer","8_Insulator"),]

summary(factor(my_data$type))

# Rename the types
library(plyr) 
my_data$type <- revalue(my_data$type, c("1_Active_Promoter"="Promoter", "4_Strong_Enhancer" = "Enhancer", "8_Insulator"= "Insulator" ))

summary(my_data$type)

# Final plot check
ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()



