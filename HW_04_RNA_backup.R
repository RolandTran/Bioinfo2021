# hw_04_RNA
# Roland Tran
# 01.26.24
# source https://www.youtube.com/watch?v=aU31KjhQQC8&list=PLhR2Go-lh6X5A5WbiO3SPHuoWbwpNznUl&index=15

# set wdls
setwd("D:/Coding_Exercises/R/BioInformatics for plant and animal sciences with R/HW/HW_files/04")
getwd()
wrkdir <- getwd()
wrkdir
files <- list.files()
files

# skip this
# create a note in .txt file
hw_04_RNA_notes <- "HW_04_RNA_notes.txt"
file.create(hw_04_RNA_notes)
files
# Open the file for writing
file_conn <- file(hw_04_RNA_notes, "w")
file_conn
# Write content to the file
cat("Hello, this is some text.", file = file_conn)
cat(" You can add more lines if needed.", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that the file has been created
cat("File", hw_04_RNA_notes, "has been created.\n")


# add a note to .txt file
# open the file in append mode
file_conn <- file(hw_04_RNA_notes, "a")
file_conn
# add notes to the file
cat("\n\n Additional note goes here.", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", hw_04_RNA_notes, "\n")

# read a pdf
# Install and load the pdftools package
install.packages("pdftools")
library(pdftools)
# Specify the path to your PDF file
HW_04_pdf_path <- "D:/Coding_Exercises/R/BioInformatics for plant and animal sciences with R/HW/HW_files/04/Assignment04-RNA.pdf"
HW_04_pdf_path
# Read the entire PDF as text
HW_04_pdf_text <- pdf_text(HW_04_pdf_path)
HW_04_pdf_text
# Print the content of the PDF
cat(HW_04_pdf_text)

#1 Load the microarray data, and store it in a variable,
microarray  <- read.csv("D:/Coding_Exercises/R/BioInformatics for plant and animal sciences with R/HW/HW_files/04/GSE7765-GPL96-series-matrix.txt", skip=66, header=TRUE, sep="\t", row.names=1)
microarray # data read at line 66, every col has a name "header = true; sep = tab; every row has a name; row.names=1
head(microarray)
tail(microarray)
str(microarray)
ncol(microarray)
nrow(microarray)
dim(microarray)

# 1 1a) How many samples are in the file ?
num_samples <- ncol(microarray)
num_samples
cat("1a) How many samples are in the file ?")
cat("1a ans: There are ", num_samples,  "samples In the file.")
# 1b) How many probes have been measured ?
num_probes <- nrow(microarray)
num_probes
cat("1b) How many probes have been measured ?")
cat(" 1b) ans: There have been", num_probes, " probes measured.")


#2 a) What does the las parameter do?
boxplot(microarray, las = 2, cex.axis = 0.7)
cat("2 a) What does the las parameter do? ans: las = orientation of the axis")
hist(microarray[,1]) # takes all rows, and 1st col
hist(microarray[,1], breaks = 100) 
 #2 b) What does the cex.axis parameter of the boxplot function do?
cat("2 b) What does the cex.axis parameter of the boxplot function do? ans: cex.axis = size of axis")
microarrayLOG <- apply(microarray, 2, log2)
# compare/contrast
head(microarrayLOG) 
head(microarray)
#1 thru 10
microarray[1:10,]
microarrayLOG[1:10,]
log2(15630.2)
# compare log of boxplot hist of log vs regular
boxplot(microarrayLOG, las = 2, cex.axis = 0.7)
boxplot(microarrayLOG, las = 1, cex.axis = 0.7)
boxplot(microarray, las = 2, cex.axis = 0.7)
boxplot(microarray, las = 2, cex.axis = 2.7)
# histogram
hist(microarrayLOG[,1], breaks = 100) 
hist(microarray[,1], breaks = 100) 


# 3a) Redo the boxplot on the LOG transformed data, what is the difference ?
cat(" 3a) Redo the boxplot on the LOG transformed data, what is the difference ?")
cat(" The range of data changed exponentially as well as the distribution. For exponential funcitons, use Log2 as the x axis.")
# 3b) Why do we do LOG transformation of microarray data ?
cat(" 3b) Why do we do LOG transformation of microarray data ?")
cat(" The PCR reaction step was amplified exponentially of the original signal thus log2 should be used")


#4) What is the major difference, between this boxplot and the one from question 3a ?

if(!requireNamespace("BiocManager", quietly = TREU))
  install.packages("BiocManager")

BiocManager::install("preprocessCore")
 
library(preprocessCore) # activates package, avails all functions

# normalize all data
microarrayLOGQnorm <- normalize.quantiles(microarrayLOG)
microarrayLOGQnorm # gets rid of col and row names
# compare with raw data
head(microarray)
head(microarrayLOG)
head(microarrayLOGQnorm)
microarray[1:10,]
microarrayLOG[1:10,]
microarrayLOGQnorm[1:10,]
# use col and row names
colnames(microarrayLOGQnorm) <- colnames(microarrayLOG)
rownames(microarrayLOGQnorm) <- rownames(microarrayLOG)
# check that row and col names have changed
microarrayLOGQnorm[1:10,]
# compare boxplots
boxplot(microarray, las = 2, cex.axis = 0.7)
boxplot(microarrayLOG, las = 2, cex.axis = 0.7)
boxplot(microarrayLOGQnorm, las = 2, cex.axis = 0.7)
# ans to #4 
cat(" #4) What is the major difference, between this boxplot and the one from question 3a ?")
cat("4 ans: The major difference between the normalize boxplot and previous non normalize boxplot is the range of data is similar for all samples in normalize boxplots.")


# 5a) Create the plot of the clusters: How many groups do you observe in the data ?
clusters <- hclust(dist(t(microarrayLOGQnorm))) # this transpose row 
plot(clusters) # groups data based on similarity
cat(" 5a) Create the plot of the clusters: How many groups do you observe in the data ? ")
cat(" There are 2 major groups: 13/14 and 16/18/20/22")

# calculating the most variable genes, using mean expression to account for how some genes are highly expressed and some are not expressed at all
scaledVariation <- apply(microarrayLOGQnorm,1,function(x){var(x)/mean(x)})
scaledVariation
tail(scaledVariation)
head(scaledVariation)
str(scaledVariation)
dim(scaledVariation) # no rows or columns
scaledVariation[1:10]

# plot scaledVariation
plot(scaledVariation)
cat("When we plot this scaledVariation, we can see that there are some genes which are highly
variable. When scaledVariance is higher then 1, this means that the variation is bigger then the
mean, we can use the which function to select those genes, and use the names function to get
their names: highlyVariable <- names(which(scaledVariation > 1))")

# identify variation greater than 1
scaledVariation>1
which(scaledVariation>1) # identify the num of probles greater than 1
names(which(scaledVariation>1)) # get the names
# create variable
highlyVariable <- names(which(scaledVariation > 1))
highlyVariable
# create heat map
heatmap(microarrayLOGQnorm[highlyVariable,], cexRow = 0.7, cexCol = 0.7)
highlyVariable_heatmap <- heatmap(microarrayLOGQnorm[highlyVariable,], cexRow = 0.7, cexCol = 0.7)
highlyVariable_heatmap # ?

#6
cat("We observe the groups we saw before, however now in the second group; we see again 2 groups, We learn which probes / genes on the microarray show a difference between our samples.")


scaledVariation<0.1
tail(scaledVariation<0.1)
head(scaledVariation<0.1)
str(scaledVariation<0.1)

which(scaledVariation<0.1)
names(which(scaledVariation<0.1))
lowVariable <- names(which(scaledVariation < 0.1))
lowVariable
# create heat map
heatmap(microarrayLOGQnorm[lowVariable,], cexRow = 0.7, cexCol = 0.7)
# compare and contrast with high variable heat map
highlyVariable_heatmap <- heatmap(microarrayLOGQnorm[lowVariable,], cexRow = 0.7, cexCol = 0.7)
highlyVariable_heatmap # ?



# extra practice
# Calculate fold change between GSM188013 and GSM188016 for a specific gene; gene of interest (GOI)
GOI <- "AFFX-ThrX-3_at"
GOI
fold_change_GOI <- log2(microarray[GOI, "GSM188013"] / microarray[GOI, "GSM188016"])
fold_change_GOI
# Print the fold change
cat("Fold Change for", GOI, ":", fold_change_GOI, "\n")


# Replace 'gene_of_interest' with the actual gene name you want to investigate
GOI <- "AFFX-ThrX-3_at"
# Extract intensity values for the specified gene
intensity_values_GOI <- microarray[GOI, ]
intensity_values_GOI
# Print the intensity values
cat("Intensity Values for", GOI, ":\n")
print(intensity_values_GOI) # can't do cat()



### remove all memory from R console
rm(list = ls())
ls()
list.files()
dir()

