# ==========================================================
#
#      •   Reading in data
#      •   Creating a quick plot
#      •   Saving publication-quality plots in multiple 
#          file formats (.png, .jpg, .pdf, and .tiff)
#
# ==========================================================


library(ggplot2)

filename <- "Analysis_script/Encode_HMM_data.txt"

# Select a file and read the data into a data-frame
my_data <- read.csv(filename, sep="\t", header=FALSE)

head(my_data)

# Column Relabeling
names(my_data)[1:4] <- c("chrom","start","stop","type")


# Initial plot 
ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()


# Save plot to a .png .jpg, .pdf, and .tiff

# Different file formats:
png("Quick-plot/plot.png")
ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()
dev.off()

tiff("Quick-plot/plot.tiff")
ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()
dev.off()

jpeg("Quick-plot/plot.jpg")
ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()
dev.off()

pdf("Quick-plot/plot.pdf")
ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()
dev.off()

# High-resolution:
png("Quick-plot/plot_hi_res.png",1000,1000)
ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()
dev.off()




