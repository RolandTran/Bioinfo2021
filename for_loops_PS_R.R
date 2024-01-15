# for loop PS

# set wdls
setwd("D:/Coding_Exercises/R/BioInformatics for plant and animal sciences with R/HW/HW_files/02/loops")
getwd()
wrkdir <- getwd()
wrkdir
list.files()

#1
# Prompt the user to enter a number
x <- readline("Enter a number: ")
# Convert the input to numeric if it's a valid number
number <- suppressWarnings(as.numeric(x))
# Check if the number is a valid numeric value
if (!is.na(number)) {
  if (number %% 2 == 0) {
    cat("Enter a number: ",x, "\n\n" )
    print(paste(number, "is an even number."))
  } else {
    cat("Enter a number: ",x,"\n\n" )
    print(paste(number, "is an odd number."))
  }
} else {
  cat("Enter a number: ",x, "\n\n" )
  print("Invalid input. Please enter a valid number.")
}

#2
# Taking user input for the range
a <- as.integer(readline("Enter a number: "))
# Using a for loop to print numbers from 1 to the user-input number
cat("Taking user input for the range.\n")
cat("Enter a number: ", a, "\n\n")
for (i in 0:a) {
  print(i)
}

#2a
# Taking user input for the range
w <- as.integer(readline("Enter a number: "))
total <- 0
# Using a for loop to print numbers from 1 to the user-input number
cat("Taking user input for the range.\n")
cat("Enter a number: ", w, "\n\n")
for (i in 0:w) {
  cat(i, "\n")
  total <- total + i
}
cat("Sum:", total, "\n")

#3
# Taking user input for the range
b <- as.integer(readline("Enter a number: "))
# Using a for loop to print numbers from 1 to the user-input number
cat("Taking user input for the range in reverse.\n")
cat("Enter a number: ", b, "\n\n")
for (i in b:0) {
  print(i)
}

#3a
# Taking user input for the range
e <- as.integer(readline("Enter a number: "))
# Using a for loop to print numbers from 1 to the user-input number
cat("Taking user input for the range in reverse.\n")
cat("Enter a number: ", e, "\n\n")
for (i in e:0) {
  cat(i, "\n")
  total <- total + i
}
cat("Sum:", total, "\n")

#4
# Taking user input for the range of even numbers
c <- as.integer(readline("Enter a multiple of 2: "))
cat("Taking user input for the range of even numbers\n")
cat("Enter an even number: ", c, "\n\n")
# Using a for loop to print even numbers from 0 to the user-input number
for (i in seq(0, c, by = 2)) {
  print(i)
}

#4a
# Taking user input for the range of even numbers
t <- as.integer(readline("Enter an even number: "))
cat("Multiples of 2 up to", t, "are:\n")
total <- 0
# Using a for loop to print numbers from 0 to the user-input number in steps of 2
for (i in seq(0, t, by = 2)) {
  cat(i, "\n")
  total <- total + i
}
cat("Sum:", total, "\n")

#5
# Taking user input for the range of even numbers
d <- as.integer(readline("Enter a multiple of 2: "))
cat("Taking user input for the range of even numbers in reverse from",d, "\n")
cat("Enter an even number: ", d, "\n\n")
total <- 0
# Using a for loop to print even numbers from 0 to the user-input number
for (i in seq(d, 0, by = -2)) {
  cat(i, "\n")
  total <- total + i
}
cat("Sum:", total, "\n")


#5 a
# Get input from the user
terms <- as.integer(readline("Enter number of terms: "))
# Initialize variables
sum_even <- 0
# Print even numbers and calculate sum
cat("Even numbers:\n")
for (i in 0:(terms - 1)) {
  even_number <- 2 * i
  cat(even_number, "\n")
  sum_even <- sum_even + even_number
}
# Print the sum of even numbers
cat("Sum:", sum_even, "\n")


#5 b
#  reverse Get input from the user
terms <- as.integer(readline("Enter number of terms: "))
# Initialize variables
sum_even <- 0
# Print even numbers and calculate sum
cat("Even numbers:\n")
for (i in (terms -1):0) {
  even_number <- 2 * i
  cat(even_number, "\n")
  sum_even <- sum_even + even_number
}
# Print the sum of even numbers
cat("Sum:", sum_even, "\n")


#6
# Taking user input for the range of odd numbers
k <- as.integer(readline("Enter an odd number: "))
cat("Odds up to", k, "are:\n")
total <- 0
# Using a for loop to print numbers from 1 to the user-input number in steps of 2
for (i in seq(1, k, by = 2)) {
  cat(i, "\n")
  total <- total + i
}
cat("Sum:", total, "\n")

#6a
# Taking user input for the range of odd numbers
k <- as.integer(readline("Enter an even number: "))
cat("Odds from", k, "down to 1 are the following:\n")
total <- 0
# Using a for loop to print numbers from 1 to the user-input number in steps of 2
for (i in seq(k, 1, by = -2)) {
  cat(i, "\n")
  total <- total + i
}
cat("Sum:", total, "\n")


#6 b
# Get input from the user
terms <- as.integer(readline("Enter number of terms: "))
# Initialize variables
sum_odd <- 0
# Print odd numbers and calculate sum
cat("Odd numbers:\n")
for (i in 1:terms) {
  odd_number <- 2 * i -1
  cat(odd_number, "\n")
  sum_odd <- sum_odd + odd_number
}
# Print the sum of odd numbers
cat("Sum:", sum_odd, "\n")


#6 b reverse
# Get input from the user
terms <- as.integer(readline("Enter number of terms: "))
# Initialize variables
sum_odd <- 0
# Print odd numbers and calculate sum
cat("Odd numbers:\n")
for (i in terms:1) {
  odd_number <- 2 * i -1
  cat(odd_number, "\n")
  sum_odd <- sum_odd + odd_number
}
# Print the sum of odd numbers
cat("Sum:", sum_odd, "\n")


#6b *Alternative num of odd terms
# Get input from the user
num_terms <- as.integer(readline("Enter number of terms: "))
# Initialize variables
odd_numbers <- c()
total_sum <- 0
# Generate odd numbers in reverse and calculate sum
for (i in 1:num_terms) {
  odd_number <- 2 * i - 1
  odd_numbers <- c(odd_numbers, odd_number)
  total_sum <- total_sum + odd_number
}
# Print odd numbers in reverse
cat("Odd numbers in reverse:\n")
cat(odd_numbers, "\n")
# Print the sum of odd numbers
cat("Sum:", total_sum, "\n")


# 6b reverse num of odd terms 
# Get input from the user
num_terms <- as.integer(readline("Enter number of terms: "))
# Initialize variables
odd_numbers <- c()
total_sum <- 0
# Generate odd numbers in reverse and calculate sum
for (i in num_terms:1) {
  odd_number <- 2 * i - 1
  odd_numbers <- c(odd_numbers, odd_number)
  total_sum <- total_sum + odd_number
}
# Print odd numbers in reverse
cat("Odd numbers in reverse:\n")
cat(odd_numbers, "\n")
# Print the sum of odd numbers
cat("Sum:", total_sum, "\n")


#7
# Taking user input for the range of odd numbers
start_odd <- as.integer(readline("Enter a start odd number: "))
end_odd <- as.integer(readline("Enter an end odd number: "))
cat("Odd numbers from", start_odd, "to", end_odd, "are the following:\n")
total <- 0
# Using a for loop to print numbers from 1 to the user-input number in steps of 2
for (i in seq(start_odd, end_odd, by = 2)) {
  cat(i, "\n")
  total <- total + i
}
cat("Sum:", total, "\n")

#7a
# Taking user input for the range of odd numbers
start_odd <- as.integer(readline("Enter a start odd number: "))
end_odd <- as.integer(readline("Enter an end odd number: "))
cat("Odd numbers from", end_odd, "to", start_odd, "are the following:\n")
total <- 0
# Using a for loop to print numbers from 1 to the user-input number in steps of 2
for (i in seq(end_odd, start_odd, by = -2)) {
  cat(i, "\n")
  total <- total + i
}
cat("Sum:", total, "\n")

#8 
# Taking user input for the range of even numbers
start_even <- as.integer(readline("Enter an even number: "))
end_even <- as.integer(readline("Enter an even number: "))
cat("Even numbers from", start_even, "to", end_even, "are the following:\n")
total <- 0
# Using a for loop to print numbers from 1 to the user-input number in steps of 2
for (i in seq(start_even, end_even, by = 2)) {
  cat(i, "\n")
  total <- total + i
}
cat("Sum:", total, "\n")

#8 a
# Taking user input for the range of odd numbers
start_even <- as.integer(readline("Enter a start even number: "))
end_even <- as.integer(readline("Enter an end even number: "))
cat("Even numbers from", end_even, "to", start_even, "are the following:\n")
total <- 0
# Using a for loop to print numbers from 1 to the user-input number in steps of 2
for (i in seq(end_even, start_even, by = -2)) {
  cat(i, "\n")
  total <- total + i
}
cat("Sum:", total, "\n")

#9
# mulitples of a number and sum
num <- as.integer(readline("Enter a number: "))
range_limit <- as.integer(readline("Enter the range limit: "))
cat("Multiples of", num, "up to", range_limit, "are:\n")
sum <- 0
for (i in seq(1, range_limit, by = 1)) {
  if (i %% num == 0) {
    cat(i, "\n")
    sum <- sum + i
  }
}
cat("The sum of multiples of ",num,"from ", num,"up to",range_limit, "is ", sum, "\n")

#9a alternative
# mulitples of a number and sum
num <- as.integer(readline("Enter a number: "))
range_limit <- as.integer(readline("Enter the range limit: "))
cat("Multiples of", num, "up to", range_limit, "are:\n")
sum <- 0
for (i in seq(num, range_limit, by = num)) {
  if (i %% num == 0) {
    cat(i, "\n")
    sum <- sum + i
  }
}
cat("The sum of multiples of ",num,"from ", num,"up to",range_limit, "is ", sum, "\n")


#9a
# mulitples of a number and sum
num <- as.integer(readline("Enter a number: "))
range_limit <- as.integer(readline("Enter the range limit: "))
cat("Multiples of", num, "up to", range_limit, "are:\n")
sum <- 0
for (i in seq(range_limit, 1, by = -1)) {
  if (i %% num == 0) {
    cat(i, "\n")
    sum <- sum + i
  }
}
cat("The sum of multiples of ",num,"from ", range_limit,"down to",num, "is ", sum, "\n")

#9a reverse alternative
# mulitples of a number and sum
num <- as.integer(readline("Enter a number: "))
range_limit <- as.integer(readline("Enter the range limit: "))
cat("Multiples of", range_limit, "up to",num , "are:\n")
sum <- 0
for (i in seq(range_limit, num, by = -num)) {
  if (i %% num == 0) {
    cat(i, "\n")
    sum <- sum + i
  }
}
cat("The sum of multiples of ",num,"from ", range_limit,"down to",num, "is ", sum, "\n")

#10 prime numbers in range
start <- as.integer(readline("Enter the start of the range: "))
end <- as.integer(readline("Enter the end of the range: "))
prime_sum <- 0
cat("Prime numbers between", start, "and", end, "are:\n")
# start the loop
for (num in seq(start, end)) { # this is outer loop
  if (num > 1) { 
    is_prime <- TRUE
    for (i in seq(2, floor(sqrt(num)))) { # sqrt(num) 2 down to 1
      if (num %% i == 0) {
        is_prime <- FALSE
        break
      }
    }
    if (is_prime || num == 2 || num == 3) {  # Include 2 and 3 as a prime number
      cat(num, "\n")
      prime_sum <- prime_sum + num
    }
  }
}
cat("Sum of prime numbers:", prime_sum, "\n")


#10a reverse 10
start <- as.integer(readline("Enter the start of the range: "))
end <- as.integer(readline("Enter the end of the range: "))
prime_sum <- 0
cat("Prime numbers between", start, "and", end, "in reverse order are:\n")
# start for loop
for (num in seq(end, start, by = -1)) {
  if (num > 1) {
    is_prime <- TRUE
    for (i in seq(2, floor(sqrt(num)))) {
      if (num %% i == 0) {
        is_prime <- FALSE
        break
      }
    }
    if (is_prime || num == 2 || num == 3) { # includes 2 and 3 as prime num
      cat(num, "\n")
      prime_sum <- prime_sum + num
    }
  }
}
cat("Sum of prime numbers:", prime_sum, "\n")

#11 factorial
number <- as.integer(readline("Enter a number to calculate its factorial: "))
factorial <- 1
# start of for loop
for (i in seq(1, number)) {
  factorial <- factorial * i
}
cat("Factorial of", number, "is", factorial, "\n")


# 12
terms <- as.integer(readline("Enter the number of terms for Fibonacci sequence: "))
a <- 0 # set 0 and 1 as first number
b <- 1
sum_fibonacci <- 0
# start print 
cat("Fibonacci sequence:\n")
for (i in seq(terms)) { # goes up to term
  cat(a, ", ")
  sum_fibonacci <- sum_fibonacci + a
  c <- a + b
  a <- b
  b <- c
}
cat("\nSum of Fibonacci sequence:", sum_fibonacci, "\n")


#12 a reverse term
terms <- as.integer(readline("Enter the number of terms for Fibonacci sequence: "))
# fibonnaci vectors
fibonacci <- numeric(terms)
fibonacci[1] <- 0
fibonacci[2] <- 1
# print statement
cat("Fibonacci sequence in reverse order:\n")
for (i in seq(3, terms)) {
  fibonacci[i] <- fibonacci[i - 1] + fibonacci[i - 2]
}
sum_fibonacci <- sum(fibonacci)
for (i in rev(seq(terms))) {
  cat(fibonacci[i], ", ")
}
cat("\nSum of Fibonacci sequence:", sum_fibonacci, "\n")


#13
# Enter a number for its multiplication table
num <- as.integer(readline("Enter a number for its multiplication table: "))
cat("Multiplication table of", num, ":\n")
# start loop
for (i in 1:20) {
  result <- num * i
  cat(num, "x", i, "=", result, "\n")
}


#13 reverse
# Enter a number for its multiplication table
num <- as.integer(readline("Enter a number for its multiplication table: "))
cat("Multiplication table of", num, ":\n")
# start loop
for (i in 20:1) {
  result <- num * i
  cat(num, "x", i, "=", result, "\n")
}


#14
# Taking input from the user
number <- as.integer(readline("Enter a number: "))
# Find the number of digits in the input number
num_digits <- nchar(as.character(number))
# Initialize the reversed number
reversed_number <- 0
# Reversing the number using a for loop
for (i in 1:num_digits) {
  digit <- number %% 10  # Extract the last digit
  reversed_number <- reversed_number + digit * (10 ^ (num_digits - i))  # Append the digit to the reversed number
  number <- number %/% 10  # Remove the last digit from the number
}
# Displaying the reversed number
cat("Reversed number:", reversed_number, "\n")


#14b alternative 
# Taking input from the user
number <- readline("Enter a number: ")
# Reverse the number
reverse <- paste(rev(strsplit(number, '')[[1]]), collapse = '')
# Displaying the reversed number
cat("Reversed number:", as.integer(reverse), "\n")



# R code to check if a number is prime 
#15
# Get user input
user_input <- as.integer(readline("Enter a number: "))
# Check if the number is prime
if (user_input <= 1) {
  cat(user_input, "is not a prime number.\n")
} else {
  is_prime <- TRUE
  for (i in 2:sqrt(user_input)) {
    if (user_input %% i == 0) {
      is_prime <- FALSE
      break
    }
  }
  
  if (is_prime) {
    cat(user_input, "is a prime number.\n")
  } else {
    cat(user_input, "is not a prime number.\n")
  }
}


#15
# Get input from the user
base <- as.integer(readline("Enter the base number: "))
exponent <- as.integer(readline("Enter the exponent: "))
result <- 1
# Calculate power using a for loop
for (i in 1:exponent) {
  result <- result * base
}
# Print the result
cat(base, "raised to the power of", exponent, "is", result, "\n")


#16
# Get input from the user
rows <- as.integer(readline("Enter the number of rows: "))
# Print the pattern
cat("Pattern:\n")
for (i in 1:rows) {
  for (j in 1:i) {
    cat("* ", sep = "")
  }
  cat("\n")
}


#16 a
# Get input from the user
rows <- as.integer(readline("Enter the number of rows: "))
# Print the pattern
cat("Pattern:\n")
for (i in rows:1) {
  for (j in 1:i) {
    cat("* ", sep = "")
  }
  cat("\n")
}


#17 
# Get input from the user
rows <- as.integer(readline("Enter the number of rows: "))
# Print the pyramid pattern
cat("Pattern:\n")
for (i in 1:rows) {
  # Print spaces before the asterisks
  spaces <- rows - i
  cat(rep(" ", spaces), sep = "")
  # Print asterisks in increasing order
  asterisks <- 2 * i - 1
  cat(rep("*", asterisks), sep = "")
  
  cat("\n")  # Move to the next line for the next row
}


#17 a 
# Get input from the user
rows <- as.integer(readline("Enter the number of rows: "))
# Print the reverse pyramid pattern
cat("Pattern:\n")
for (i in rows:1) {
  # Print spaces before the asterisks
  spaces <- rows - i
  cat(rep(" ", spaces), sep = "")
  
  # Print asterisks in decreasing order
  asterisks <- 2 * i - 1
  cat(rep("*", asterisks), sep = "")
  
  cat("\n")  # Move to the next line for the next row
}


#17c 
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the diamond: "))
# Upper half of the diamond
for (i in seq(1, rows * 2, by = 2)) {
  cat(rep(' ', (rows * 2 - i) %/% 2), rep('*', i), "\n", sep = '')
}
# Lower half of the diamond
for (i in seq(rows * 2 - 3, 1, by = -2)) {
  cat(rep(' ', (rows * 2 - i) %/% 2), rep('*', i), "\n", sep = '')
}


#18 
# Get input from the user
size <- as.integer(readline("Enter the size of the square: "))
# Draw the hollow square
for (i in 1:size) {
  if (i == 1 || i == size) {
    cat(rep('* ', size), "\n", sep = '')
  } else {
    cat('* ', rep('  ', size - 2), '*\n', sep = '')
  }
}


#19
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the half-pyramid: "))
# Print the half-pyramid
for (i in 1:rows) {
  cat(strrep(as.character(i), i), "\n")
}


#19 a
# reverse, Get input from the user
rows <- as.integer(readline("Enter the number of rows for the half-pyramid: "))
# Print the half-pyramid
for (i in rows:1) {
  cat(strrep(as.character(i), i), "\n")
}


#20 
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the half-pyramid: "))
# Print the half-pyramid with numbers
for (i in 1:rows) {
  for (j in 1:i) {
    cat(j, " ")
  }
  cat("\n")
}


#20a reverse
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the half-pyramid: "))
# Print the half-pyramid with numbers
for (i in rows:1) {
  for (j in 1:i) {
    cat(j, " ")
  }
  cat("\n")
}


#21
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the triangle: "))
# Create a vector of uppercase alphabets
alphabets <- LETTERS
# Draw the right triangle of alphabets
for (i in 1:rows) {
  cat(paste(alphabets[1:i], collapse = ' '), "\n")
}


#21 a
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the triangle: "))
# Create a vector of uppercase alphabets
alphabets <- LETTERS
# Draw the right triangle of alphabets
for (i in rows:1) {
  cat(paste(alphabets[1:i], collapse = ' '), "\n")
}


#22
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the reversed triangle: "))
# Draw the reversed triangle of letters
for (i in 1:rows) {
  # Print spaces based on row number
  cat(rep(" ", i - 1), sep = "")
  # Print letters in increasing order
  for (j in 1:(rows - i + 1)) {
    if (j < (rows - i + 1)) {
      cat(LETTERS[j], " ")
    } else {
      cat(LETTERS[j], "\n")
    }
  }
}


# 39 Hip Hip Hooray
first_word <- readline("Enter a first word: ")
second_word <- readline("Enter a second word: ")
first_num <- as.integer(readline("Enter the number of times the first word is used: "))
second_num <- as.integer(readline("Enter the number of times the second word is used: "))
total_num <- as.integer(readline("Enter the number of times the phrase is spoken: "))

for (i in 1:total_num) {
  for (j in 1:first_num) {
    cat(first_word, "\n")
  }
  for (k in 1:second_num) {
    cat(second_word, "!\n")
  }
}

#41 Hip Hip Hooray in R using for loop
first_word <- readline("Enter a first word: ")
second_word <- readline("Enter a second word: ")
first_num <- as.integer(readline("Enter the number of times the first word is used: "))
second_num <- as.integer(readline("Enter the number of times the second word is used: "))
total_num <- as.integer(readline("Enter the number of times the phrase is spoken: "))
# start of for loop
for (i in 1:total_num) {
  for (j in 1:first_num) {
    cat(first_word, "\n")
  }
  for (k in 1:second_num) {
    cat(second_word, "!\n")
  }
}

# next problem

### remove all memory from R console
rm(list = ls())
ls()
list.files()
dir()
