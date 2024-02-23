# ==========================================================
#
#      •   Counting categorical variables
#      •   Mean, median, standard deviation
#      •   Finding issues
#
# ==========================================================


library(ggplot2)

filename <- "Analysis_script/Encode_HMM_data.txt"

# Select a file and read the data into a data-frame
my_data <- read.csv(filename, sep="\t", header=FALSE)


head(my_data)

# Relabel column
names(my_data)[1:4] <- c("chrom","start","stop","type")


# Initial plot
ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()


dim(my_data)

# We can ask our data some questions:
summary(my_data)

# We can break these down by column to see more:
summary(my_data$chrom)

summary(my_data$type)

summary(my_data$start)
summary(my_data$stop)


# New column
my_data$size = my_data$stop - my_data$start

head(my_data)

# Basic statistics:
summary(my_data$size)

mean(my_data$size)
sd(my_data$size)

median(my_data$size)
max(my_data$size)
min(my_data$size)



ggplot(my_data,aes(x=chrom,fill=type)) + geom_bar()

# Fixes to implement in lesson 3:
# 1)    Chromosomes in the wrong order, and the "chr" prefixes don't fit on the x-axis
# 2)    Too many types
# 3)    Bad names for the types

