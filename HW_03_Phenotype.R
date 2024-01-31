# hw_03_phenotype

# set wdls
setwd("D:/Coding_Exercises/R/BioInformatics for plant and animal sciences with R/HW/HW_files/03")
getwd()
wrkdir <- getwd()
wrkdir
list.files()
files <- list.files()
files

# create a note in .txt file
wrkdir <- "HW_03_Phenotype_notes.txt"
file.create(wrkdir)
list.files()
# Open the file for writing
file_conn <- file(wrkdir, "w")
file_conn
# Write content to the file
cat("Hello, this is some text.", file = file_conn)
cat(" You can add more lines if needed.", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that the file has been created
cat("File", wrkdir, "has been created.\n")


# add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n Additional note goes here.", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")


# read a pdf
# Install and load the pdftools package
install.packages("pdftools")
library(pdftools)
# Specify the path to your PDF file
HW_03_pdf_path <- "D:/Coding_Exercises/R/BioInformatics for plant and animal sciences with R/HW/HW_files/03/Assignment03-Phenotypes.pdf"
HW_03_pdf_path
# Read the entire PDF as text
HW_03_pdf_text <- pdf_text(HW_03_pdf_path)
HW_03_pdf_text
# Print the content of the PDF
cat(HW_03_pdf_text)


#1 
cat("1 In a Two-point cross we take a hetrozygous animal and cross it with a homozygous animal.")
# part 1a
cat(" a) Draw the mendelian inheritance diagram for two traits in an AaBb x aabb cross.")
# read and display image
# Install and load the magick package
install.packages("magick")
library(magick)
# Specify the file path for the PNG file
wrkdir <- "HW_03_Phenotype.png"
# Open the image in the default web browser
browseURL(wrkdir)
# part 1b
cat(" b) Why don’t we take two heterozygous animals ?")
cat(" Ans 1b: We cross with a homozygous recessive animal to determine if an organism exhibiting a dominant trait is homozygous or heterozygous for a specific allele.")

# add answer to notes, add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n 1b) Ans 1b: We cross with a homozygous recessive animal to determine if an organism exhibiting a dominant trait is homozygous or heterozygous for a specific allele.", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")


#2
cat("In a three point cross AaBbCc x aabbcc,
a) Draw the mendelian inheritance diagram for three traits in an AaBbCc x aabbcc cross
b) How many different gametes can be produced by the AaBbCc parent ?")
# 2a
browseURL(wrkdir)
#2b
cat("2b ans: 8 different gametes can be produced by the parent AaBbCc: ABC, ABc, AbC. Abc, aBC, aBc, abC, abc. ")

# add answer to notes, add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n 2b ans: 8 different gametes can be produced by the parent AaBbCc: ABC, ABc, AbC. Abc, aBC, aBc, abC, abc. ", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")



# Phenotype databases
#1 Using the IMPC database
# 1a) How many protein coding genes have does mouse have according to this database ?
cat("Phenotype database - Using the IMPC database. 1a) How many protein coding genes have does mouse have according to this database ?")
cat("Phenotype database 1a) ans: As of 2024.01.22, there are 26717 protein coding genes in a mouse. https://www.mousephenotype.org/data/search?term=&type=gene.")

# add answer to notes, add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n Phenotype database 1a) ans: As of 2024.01.22, there are 26717 protein coding genes in a mouse. https://www.mousephenotype.org/data/search?term=&type=gene.", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")


# 1b) How many protein coding genes have been knocked out, 
# and have completed the phenotype pipeline?
cat(" 1b) How many protein coding genes have been knocked out,and have completed the phenotype pipeline? ")
cat(" 1b) ans: As of 2024.01.22, 8707 total knockout genes have been phenotyped. https://www.mousephenotype.org/ ")

# add answer to notes, add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n 1b) ans: As of 2024.01.22, 8707 total knockout genes have been phenotyped. https://www.mousephenotype.org/ ", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")


# 1c) How many genes are associated with respiratory diseases and have been completely phenotyped?
cat(" 1c) How many genes are associated with respiratory diseases and have been completely phenotyped?")
cat("1c) ans: AS of 2024.01.22, 34 genes are associated with respiratory diseases classifed as abnormal respiratory function which is defined as an anomaly in any measure of the process involved in respiration. https://www.mousephenotype.org/data/phenotypes/MP:0002327 ")

# add answer to notes, add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n 1c) ans: AS of 2024.01.22, 34 genes are associated with respiratory diseases classifed as abnormal respiratory function which is defined as an anomaly in any measure of the process involved in respiration. https://www.mousephenotype.org/data/phenotypes/MP:0002327 ", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")


# 1d) What effect has ALG13 knockout on the fat mass phenotype?
cat(" 1d) What effect has ALG13 knockout on the fat mass phenotype? ")
cat("1d) ans: ALG13 knockout leads to an increased total body fat amount. https://www.mousephenotype.org/data/genes/MGI:1914824 ")

# add answer to notes, add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n 1d) ans: ALG13 knockout leads to an increased total body fat amount. https://www.mousephenotype.org/data/genes/MGI:1914824 ", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")


# 2 Using the IMPC database, imagine you have measured Heart Weight in a knockout mouse
# 2a) How many animals should you measure at the bare minimum, before it can be submitted ?
cat(" 2a) How many animals should you measure at the bare minimum, before it can be submitted ? ")
cat("2a) ans: As of 2024.01.22, 14 homozygous knockout mice (7 male, 7 female) are phenotyped for each gene https://www.mousephenotype.org/understand/start-using-the-impc/ ")

# add answer to notes, add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n 2a) ans: As of 2024.01.22, 14 homozygous knockout mice (7 male, 7 female) are phenotyped for each gene https://www.mousephenotype.org/understand/start-using-the-impc/ ", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")


# 2b) Is it easy to contribute your own information back into the database?
cat("2b) Is it easy to contribute your own information back into the database?")
cat("2b) The university of employment has to be a member of the consortium and one has to follow a list of guidelines. Much information is cryptic.")

# add answer to notes, add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n 2b) The university of employment has to be a member of the consortium and one has to follow a list of guidelines. Much information is cryptic.", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")


# 3 Using the OMIM database 3a) Which gene causes green colorblindness in humans ? 
cat("3a) Which gene causes green colorblindness in humans ? ")
cat(" 3a) ans: The gene/locus for green colorblindess in humans is OPN1MW, deutan colorblindess. https://www.omim.org/entry/303800?search=%22color%20blindness%22&highlight=%22%28colour%7Ccolor%29%20blindness%22 ")

# add answer to notes, add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n  3a) ans: The gene/locus for green colorblindess in humans is OPN1MW, deutan colorblindess. https://www.omim.org/entry/303800?search=%22color%20blindness%22&highlight=%22%28colour%7Ccolor%29%20blindness%22 ", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")


# 3 b) Has this gene been phenotyped in the IMPC database, if not what is it’s status ?
cat("3 b) Has this gene been phenotyped in the IMPC database, if not what is it’s status ?")
cat("3b) ans: As of 2024.01.22, OPN1MW embryonic stem cells for this gene has been produced but phenotyping is currently not planned for a knockout strain of this gene. https://www.mousephenotype.org/data/search?term=opn1mw&type=gene")

# add answer to notes, add a note to .txt file
# open the file in append mode
file_conn <- file(wrkdir, "a")
file_conn
# add notes to the file
cat("\n\n  3b) ans: As of 2024.01.22, OPN1MW embryonic stem cells for this gene has been produced but phenotyping is currently not planned for a knockout strain of this gene. https://www.mousephenotype.org/data/search?term=opn1mw&type=gene", file = file_conn)
# Close the file connection
close(file_conn)
# Print a message indicating that notes have been added
cat("Notes have been added to", wrkdir, "\n")



### remove all memory from R console
rm(list = ls())
ls()
list.files()
dir()



