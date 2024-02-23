# ==========================================================
#
#      •   Venn diagrams (compare two or more lists of genes)
#
# ==========================================================


# ==========================================================
#
#      New data set for exploring plotting: variants
#
# ==========================================================


# Gene lists for Venn Diagram
listA <- read.csv("Lesson-06/genes_list_A.txt",header=FALSE)
A <- listA$V1
A

listB <- read.csv("Lesson-06/genes_list_B.txt",header=FALSE)
B <- listB$V1
B

listC <- read.csv("Lesson-06/genes_list_C.txt",header=FALSE)
C <- listC$V1
C

listD <- read.csv("Lesson-06/genes_list_D.txt",header=FALSE)
D <- listD$V1
D

length(A)
length(B)
length(C)
length(D)

# install package VennDiagram
library(VennDiagram)
library(grid)

# This function only works by saving directly to a file

venn.diagram(list("list C"=C, "list D"=D), fill = c("yellow","cyan"), cex = 1.5, filename="Lesson-06/Venn_diagram_genes_2.png")

venn.diagram(list(A = A, C = C, D = D), fill = c("yellow","red","cyan"), cex = 1.5,filename="Lesson-06/Venn_diagram_genes_3.png")

venn.diagram(list(A = A, B = B, C = C, D = D), fill = c("yellow","red","cyan","forestgreen"), cex = 1.5,filename="Lesson-06/Venn_diagram_genes_4.png")

