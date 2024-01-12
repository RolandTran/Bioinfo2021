# 02 R file

# 2-4. Create a new file which will hold your analysis, call it: lecture3.R This file will hold all the command that you type into R to complete the assignment.
# Go to the directory in which you stored your file by executing, (add this command to the lecture3.R file):


#2-4
# set wdls
setwd("D:/Coding_Exercises/R/BioInformatics for plant and animal sciences with R/HW/HW_files/02")
getwd()
wrkdir <- getwd()
wrkdir
list.files()


# saved as fasta files
#5 Load the fasta file you just downloaded into R, and store it in a variable
mtNd1 <- readLines("mtNd1.txt")
mtNd1
writeLines(mtNd1,"mtNd1.fasta")
mtNd1_f <- readLines("mtNd1.fasta")
mtNd1_f
head(mtNd1_f)
tail(mtNd1_f)
str(mtNd1_f)
nrow(mtNd1_f) # should return null
ncol(mtNd1_f) # should return null
# 5 or alternative
list.files()
writeLines(readLines("mtNd1.txt"), "mtNd1.fasta")
# after you save as variable, must saved in this format
mtNd1_f <- readLines("mtNd1.fasta")
mtNd1_f
# run this at end of every problem
list.files() # list all files
ls() # list all variables in R file created


# 6a How many fasta sequences are in the file?
# Join the elements of mtNd1_f into a single string
mtNd1_f_single_string <- paste(mtNd1_f, collapse = "\n")
print(mtNd1_f_single_string) # prints with no space
# no need to run
cat(mtNd1_f_single_string) # similar to before collapse
# Split the text by empty lines
mtNd1_f_single_string_split_empty_lines <- strsplit(mtNd1_f_single_string, "\n\n")[[1]]
mtNd1_f_single_string_split_empty_lines # empty line between fasta seq
# no need to run
cat(mtNd1_f_single_string_split_empty_lines) # doesn't separate the fasta seq
# Count the number of elements starting with ">"
mtNd1_f_num_fasta_seq <- sum(substr(mtNd1_f_single_string_split_empty_lines, 1, 1) == ">")
mtNd1_f_num_fasta_seq
# print out answer
cat("There are ",mtNd1_f_num_fasta_seq," fasta sequences in the file (which is represented by '>').")
# alternative
mtNd1_f_num_fasta_seq_a <- sum(grepl("^>", mtNd1_f))
mtNd1_f_num_fasta_seq_a
# print out answer
cat("There are ",mtNd1_f_num_fasta_seq_a,"fasta sequences in the file (which is represented by '>').")

# 7-9 How many A’s are there in this sequence (2nd statement)?
mtNd1_f[1] # run first line
mtNd1_f[2] # run 2nd line
table(mtNd1_f)
count_mtNd1_f <- table(mtNd1_f)[1]
count_mtNd1_f # num of count or frequency of specific entry or element in mtNd1_f
# print out above
cat("There are ", count_mtNd1_f, "counts or frequencies of specific entry or elements in mtNd1_f variable.")


# 9b How many A’s are there in this sequence (2nd statement)?
mtNd1_f[2]
table(strsplit(mtNd1_f[2], "")) # split each
table(strsplit(mtNd1[2], "")[[1]])
# create variable for 2nd line
count_A_mtNd1_f_2 <- table(strsplit(mtNd1_f[2], ""))['A']
count_A_mtNd1_f_2
# alternative
count_A_mtNd1_f_2a <- table(strsplit(mtNd1[2], "")[[1]])['A']
count_A_mtNd1_f_2a
# print out statements
cat("There are ",count_A_mtNd1_f_2, "A from the 2nd line of the fasta file." )

 
# 9b How many A’s are there in this sequence (2nd statement)?
# from website
mtNd1_f[1]
mtNd1_f[15]
strsplit(mtNd1_f[15],"") # splits line 15 into individual characters
strsplit(mtNd1_f[15:16],"") # 15 and 16
strsplit(mtNd1_f[15],"")[[1]] # first line into characters
mtNd1_f[1]
strsplit(mtNd1_f[1],"")[[1]] # first line into characters 
table(strsplit(mtNd1_f[15], "")[[1]]) # create table for A, C, G, T
# focus in on line 2
mtNd1_f[2]
strsplit(mtNd1[2], "")[[1]] # into individual characters
table(strsplit(mtNd1[2], "")[[1]]) # put into table

# 10 check first letter
strsplit(mtNd1_f[1],"")[[1]][[1]] # prints first character
first_letter_1st_line_mtNd1_f <- strsplit(mtNd1_f[1],"")[[1]][[1]]
first_letter_1st_line_mtNd1_f
first_letter_2nd_line_mtNd1_f <- strsplit(mtNd1_f[2],"")[[1]][[1]]
first_letter_2nd_line_mtNd1_f
first_letter_3rd_line_mtNd1_f <- strsplit(mtNd1_f[3],"")[[1]][[1]]
first_letter_3rd_line_mtNd1_f


#11 print first letter from each line
# from lecture, 
for(x in 1:length(mtNd1_f)){
  first_letter_mtNd1_f <- strsplit(mtNd1[x], "")[[1]][1]
  cat(x, "",first_letter_mtNd1_f,"\n")
}

# there will be an error due to NA
for(x in 1:length(mtNd1_f)){
  first_letter_mtNd1_f <- strsplit(mtNd1[x], "")[[1]][1]
  if(first_letter_mtNd1_f == ">"){
    cat("IDENTIFIER !!!!\n")
  }else{
    cat(x, "",first_letter_mtNd1_f,"\n")
  }
}

#12 12. Using logical statements like if, we can now decide if something is DNA, Empty or and Identifier, we can then use the cat function to print out the correct class of the line.
# check if NA
# there will be an error due to NA
for(x in 1:length(mtNd1_f)){
  first_letter_mtNd1_f <- strsplit(mtNd1[x], "")[[1]][1]
  if(is.na(first_letter_mtNd1_f)){
    cat("EMPTY !!!!\n")
  }else{
    if(first_letter_mtNd1_f == ">"){
      cat("IDENTIFIER !!!!\n")
    }else{
      cat(x, "",first_letter_mtNd1_f,"\n")
    }
  }  
}

#13
for(x in 1:length(mtNd1_f)){
  first_letter_mtNd1_f <- strsplit(mtNd1[x], "")[[1]][1]
  if(is.na(first_letter_mtNd1_f)){
    cat("EMPTY !!!!\n")
  }else{
    if(first_letter_mtNd1_f == ">"){
      cat("IDENTIFIER !!!!\n")
    }else{
      cat("SEQUENCE !!!!\n")
    }
  }  
}

 
#11 compare human_mtDNA vs mouse_mtDNA
# create human_mtDNA_f 
writeLines(readLines("human_mtDNA.txt"), "human_mtDNA.fasta")
human_mtDNA_f <- readLines("human_mtDNA.fasta")
human_mtDNA_f
head(human_mtDNA_f)
tail(human_mtDNA_f)
str(human_mtDNA_f)
# create mouse_mtDNA_f 
writeLines(readLines("mouse_mtDNA.txt"), "mouse_mtDNA.fasta")
mouse_mtDNA_f <- readLines("mouse_mtDNA.fasta")
mouse_mtDNA_f
head(mouse_mtDNA_f)
tail(mouse_mtDNA_f)
str(mouse_mtDNA_f)

#Here is a corrected version of the code to generate a pairwise sequence alignment 
# using the pairwiseAlignment function from the Biostrings package:
# Install the Bioconductor 'Biostrings' package if not already installed
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}
BiocManager::install("Biostrings")
# Load necessary libraries
library(Biostrings)
human_mtDNA_seq <- readDNAStringSet("human_mtDNA.fasta")
human_mtDNA_seq
mouse_mtDNA_seq <- readDNAStringSet("mouse_mtDNA.fasta")
mouse_mtDNA_seq

# Perform pairwise alignment between sequences
human_mouse_mtDNA_pairwise_alignment <- pairwiseAlignment(human_seq, mouse_seq)
human_mouse_mtDNA_pairwise_alignment
print(human_mouse_mtDNA_pairwise_alignment)


# numerical analysis
# Extract alignment details
human_mouse_mtDNA_alignment_details <- as.character(human_mouse_mtDNA_pairwise_alignment)
human_mouse_mtDNA_alignment_details

# Remove gaps from the alignment to compare matching positions
human_mouse_mtDNA_alignment_pattern <- gsub("-", "", pattern(human_mouse_mtDNA_pairwise_alignment))
human_mouse_mtDNA_alignment_pattern
human_mouse_mtDNA_alignment_subject <- gsub("-", "", subject(human_mouse_mtDNA_pairwise_alignment))
human_mouse_mtDNA_alignment_subject

# Calculate sequence identity
human_mouse_mtDNA_matching_positions <- sum(human_mouse_mtDNA_alignment_pattern == human_mouse_mtDNA_alignment_subject)
human_mouse_mtDNA_matching_positions
human_mouse_mtDNA_alignment_length <- nchar(human_mouse_mtDNA_alignment_pattern)
human_mouse_mtDNA_alignment_length
human_mouse_mtDNA_sequence_identity <- human_mouse_mtDNA_matching_positions / human_mouse_mtDNA_alignment_length * 100
human_mouse_mtDNA_sequence_identity

# Output results
print(paste("Matching positions:", human_mouse_mtDNA_matching_positions))
print(paste("Alignment length:", human_mouse_mtDNA_alignment_length))
print(paste("Sequence identity (%):", round(human_mouse_mtDNA_sequence_identity, 2)))


# end of problem set

### remove all memory from R console
rm(list = ls())
ls()
list.files()
dir()

mtNd1 <- readLines("mtNd1.txt")
mtNd1

head(mtNd1)
tail(mtNd1)
str(mtNd1)

# 6
table(mtNd1)
table(strsplit(mtNd1[2], ""))

mtNd1[1]
mtNd1[15]

strsplit(mtNd1[15],"")

strsplit(mtNd1[15:16],"")

strsplit(mtNd1[15],"")[[1]]

strsplit(mtNd1[1],"")[[1]]

table(strsplit(mtNd1[15], "")[[1]])

mtNd1[1]
mtNd1[2]
table(strsplit(mtNd1[2], "")[[1]])


writeLines(mtNd1,"mtNd1.fasta")


for(line in mtNd1){
  firstLetter <- unlist(strsplit(line,""))[1]
  cat(firstLetter, "\n")
}


for(line in mtNd1){
  firstLetter  <- unlist(strsplit(line, ""))[1]
  if(is.na(firstLetter)){
    cat("EMPTY\n")
  } else if(firstLetter == ">"){
    cat("IDENITIFIER\n")
  }else{
    cat("DNA sequence\n")
  }
}





