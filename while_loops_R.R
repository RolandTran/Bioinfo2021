# while loop PS

# set wdls
setwd("D:/Coding_Exercises/R/BioInformatics for plant and animal sciences with R/HW/HW_files/02/loops/while_loops")
getwd()
wrkdir <- getwd()
wrkdir
list.files()

#2
# Taking user input for the range
a <- as.integer(readline("Enter a number: "))
# Using a while loop to print numbers from 1 to the user-input number
cat("Taking user input for the range.\n")
cat("Enter a number: ", a, "\n\n")
# start loop
i <- 0
while (i <= a) {
  print(i)
  i <- i + 1
}

#2a
# Taking user input for the range
w <- as.integer(readline("Enter a number: "))
total <- 0
# Using a while loop to print numbers from 1 to the user-input number
cat("Taking user input for the range.\n")
cat("Enter a number: ", w, "\n\n")
# start loop
i <- 0
while (i <= w) {
  cat(i, "\n")
  total <- total + i
  i <- i + 1
}
cat("Sum:", total, "\n")

#3
# Taking user input for the range
b <- as.integer(readline("Enter a number: "))
# Using a while loop to print numbers from 1 to the user-input number in reverse
cat("Taking user input for the range in reverse.\n")
cat("Enter a number: ", b, "\n\n")
# start loop
i <- b
while (i >= 0) {
  print(i)
  i <- i - 1
}

#3a
# Taking user input for the range
e <- as.integer(readline("Enter a number: "))
total <- 0
# Using a while loop to print numbers from 1 to the user-input number in reverse
cat("Taking user input for the range in reverse.\n")
cat("Enter a number: ", e, "\n\n")
# start loop
i <- e
while (i >= 0) {
  cat(i, "\n")
  total <- total + i
  i <- i - 1
}
cat("Sum:", total, "\n")

#4
# Taking user input for the range of even numbers
c <- as.integer(readline("Enter a multiple of 2: "))
cat("Taking user input for the range of even numbers\n")
cat("Enter an even number: ", c, "\n\n")
# Using a while loop to print even numbers from 0 to the user-input number
i <- 0
while (i <= c) {
  print(i)
  i <- i + 2
}

#4a
# Taking user input for the range of even numbers
t <- as.integer(readline("Enter an even number: "))
cat("Multiples of 2 up to", t, "are:\n")
total <- 0
# Using a while loop to print numbers from 0 to the user-input number in steps of 2
i <- 0
while (i <= t) {
  cat(i, "\n")
  total <- total + i
  i <- i + 2
}
cat("Sum:", total, "\n")

#5
# Taking user input for the range of even numbers
d <- as.integer(readline("Enter a multiple of 2: "))
cat("Taking user input for the range of even numbers in reverse from",d, "\n")
cat("Enter an even number: ", d, "\n\n")
total <- 0
# Using a while loop to print even numbers from 0 to the user-input number
i <- d
while (i >= 0) {
  print(i)
  i <- i - 2
}

#5a for loop num of even terms
# Get input from the user
terms <- as.integer(readline("Enter number of terms: "))
# Initialize variables
sum_even <- 0
# Print even numbers and calculate sum
cat("Even numbers:\n")
i <- 0
while (i < terms) {
  even_number <- 2 * i
  cat(even_number, "\n")
  sum_even <- sum_even + even_number
  i <- i + 1
}
# Print the sum of even numbers
cat("Sum:", sum_even, "\n")

#5b
# reverse Get input from the user
terms <- as.integer(readline("Enter number of terms: "))
# Initialize variables
sum_even <- 0
# Print even numbers and calculate sum
cat("Even numbers:\n")
i <- terms - 1
while (i >= 0) {
  even_number <- 2 * i
  cat(even_number, "\n")
  sum_even <- sum_even + even_number
  i <- i - 1
}
# Print the sum of even numbers
cat("Sum:", sum_even, "\n")

#5c
# Get input from the user
terms <- as.integer(readline("Enter number of terms: "))
# Initialize variables
sum_odd <- 0
# Print odd numbers and calculate sum
cat("Odd numbers:\n")
i <- 0
while (i < terms) {
  odd_number <- 2 * i + 1
  cat(odd_number, "\n")
  sum_odd <- sum_odd + odd_number
  i <- i + 1
}
# Print the sum of even numbers
cat("Sum:", sum_odd, "\n")

#5d for loop reverse
# Get input from the user
terms <- as.integer(readline("Enter number of terms: "))
# Initialize variables
sum_odd <- 0
# Print odd numbers and calculate sum
cat("Odd numbers:\n")
i <- terms
while (i > 0) {
  odd_number <- 2 * i - 1
  cat(odd_number, "\n")
  sum_odd <- sum_odd + odd_number
  i <- i - 1
}
# Print the sum of even numbers
cat("Sum:", sum_odd, "\n")

#6
# Taking user input for the range of odd numbers
k <- as.integer(readline("Enter an odd number: "))
cat("Odds up to", k, "are:\n")
total <- 0
# Using a while loop to print numbers from 1 to the user-input number in steps of 2
i <- 1
while (i <= k) {
  cat(i, "\n")
  total <- total + i
  i <- i + 2
}
cat("Sum:", total, "\n")

#6a
# Taking user input for the range of odd numbers
k <- as.integer(readline("Enter an even number: "))
cat("Odds from", k, "down to 1 are the following:\n")
total <- 0
# Using a while loop to print numbers from 1 to the user-input number in steps of 2
i <- k
while (i >= 1) {
  cat(i, "\n")
  total <- total + i
  i <- i - 2
}
cat("Sum:", total, "\n")

#7
# Taking user input for the range of odd numbers
start_odd <- as.integer(readline("Enter a start odd number: "))
end_odd <- as.integer(readline("Enter an end odd number: "))
cat("Odd numbers from", start_odd, "to", end_odd, "are the following:\n")
total <- 0
i <- start_odd
while (i <= end_odd) {
  cat(i, "\n")
  total <- total + i
  i <- i + 2
}
cat("Sum:", total, "\n")

#7a
# Taking user input for the range of odd numbers
start_odd <- as.integer(readline("Enter a start odd number: "))
end_odd <- as.integer(readline("Enter an end odd number: "))
cat("Odd numbers from", end_odd, "to", start_odd, "are the following:\n")
total <- 0
i <- end_odd
while (i >= start_odd) {
  cat(i, "\n")
  total <- total + i
  i <- i - 2
}
cat("Sum:", total, "\n")

#8 
# Taking user input for the range of even numbers
start_even <- as.integer(readline("Enter an even number: "))
end_even <- as.integer(readline("Enter an even number: "))
cat("Even numbers from", start_even, "to", end_even, "are the following:\n")
total <- 0
i <- start_even
while (i <= end_even) {
  cat(i, "\n")
  total <- total + i
  i <- i + 2
}
cat("Sum:", total, "\n")

#8a
# Taking user input for the range of even numbers
start_even <- as.integer(readline("Enter a start even number: "))
end_even <- as.integer(readline("Enter an end even number: "))
cat("Even numbers from", end_even, "to", start_even, "are the following:\n")
total <- 0
i <- end_even
while (i >= start_even) {
  cat(i, "\n")
  total <- total + i
  i <- i - 2
}
cat("Sum:", total, "\n")

#9
# multiples of a number and sum
num <- as.integer(readline("Enter a number: "))
range_limit <- as.integer(readline("Enter the range limit: "))
cat("Multiples of", num, "up to", range_limit, "are:\n")
sum <- 0
i <- 1
while (i <= range_limit) {
  if (i %% num == 0) {
    cat(i, "\n")
    sum <- sum + i
  }
  i <- i + 1
}
cat("The sum of multiples of ", num, "from ", num, "up to", range_limit, "is ", sum, "\n")

#9a alternative
# multiples of a number and sum
num <- as.integer(readline("Enter a number: "))
range_limit <- as.integer(readline("Enter the range limit: "))
cat("Multiples of", num, "up to", range_limit, "are:\n")
sum <- 0
i <- num
while (i <= range_limit) {
  cat(i, "\n")
  sum <- sum + i
  i <- i + num
}
cat("The sum of multiples of ", num, "from ", num, "up to", range_limit, "is ", sum, "\n")

#9a
# multiples of a number and sum
num <- as.integer(readline("Enter a number: "))
range_limit <- as.integer(readline("Enter the range limit: "))
cat("Multiples of", num, "up to", range_limit, "are:\n")
sum <- 0
i <- range_limit
while (i >= 1) {
  if (i %% num == 0) {
    cat(i, "\n")
    sum <- sum + i
  }
  i <- i - 1
}
cat("The sum of multiples of ", num, "from ", range_limit, "down to", num, "is ", sum, "\n")

#9a reverse alternative
# multiples of a number and sum
num <- as.integer(readline("Enter a number: "))
range_limit <- as.integer(readline("Enter the range limit: "))
cat("Multiples of", range_limit, "up to", num , "are:\n")
sum <- 0
i <- range_limit
while (i >= num) {
  cat(i, "\n")
  sum <- sum + i
  i <- i - num
}
cat("The sum of multiples of ", num, "from ", range_limit, "down to", num, "is ", sum, "\n")

#10 R code to check if a number is prime 
# Get user input
user_input <- as.integer(readline("Enter a number: "))
# Check if the number is prime
if (user_input <= 1) {
  cat(user_input, "is not a prime number.\n")
} else {
  is_prime <- TRUE
  i <- 2
  while (i <= sqrt(user_input)) {
    if (user_input %% i == 0) {
      is_prime <- FALSE
      break
    }
    i <- i + 1
  }
  
  if (is_prime) {
    cat(user_input, "is a prime number.\n")
  } else {
    cat(user_input, "is not a prime number.\n")
  }
}

#10a prime numbers in range
start <- as.integer(readline("Enter the start of the range: "))
end <- as.integer(readline("Enter the end of the range: "))
prime_sum <- 0
cat("Prime numbers between", start, "and", end, "are:\n")
# start the loop
num <- start
while (num <= end) {
  if (num > 1) { 
    is_prime <- TRUE
    i <- 2
    while (i <= floor(sqrt(num))) {
      if (num %% i == 0) {
        is_prime <- FALSE
        break
      }
      i <- i + 1
    }
    if (is_prime || num == 2 || num == 3) {  
      cat(num, "\n")
      prime_sum <- prime_sum + num
    }
  }
  num <- num + 1
}
cat("Sum of prime numbers:", prime_sum, "\n")

#10a reverse 10
start <- as.integer(readline("Enter the start of the range: "))
end <- as.integer(readline("Enter the end of the range: "))
prime_sum <- 0
cat("Prime numbers between", start, "and", end, "in reverse order are:\n")
# start while loop
num <- end
while (num >= start) {
  if (num > 1) {
    is_prime <- TRUE
    i <- 2
    while (i <= floor(sqrt(num))) {
      if (num %% i == 0) {
        is_prime <- FALSE
        break
      }
      i <- i + 1
    }
    if (is_prime || num == 2 || num == 3) { # includes 2 and 3 as prime num
      cat(num, "\n")
      prime_sum <- prime_sum + num
    }
  }
  num <- num - 1
}
cat("Sum of prime numbers:", prime_sum, "\n")

#11 factorial
number <- as.integer(readline("Enter a number to calculate its factorial: "))
factorial <- 1
i <- 1
# start of while loop
while (i <= number) {
  factorial <- factorial * i
  i <- i + 1
}
cat("Factorial of", number, "is", factorial, "\n")

# 12
terms <- as.integer(readline("Enter the number of terms for Fibonacci sequence: "))
a <- 0 # set 0 and 1 as first number
b <- 1
sum_fibonacci <- 0
i <- 1
# start of while loop
cat("Fibonacci sequence:\n")
while (i <= terms) {
  cat(a, ", ")
  sum_fibonacci <- sum_fibonacci + a
  c <- a + b
  a <- b
  b <- c
  i <- i + 1
}
cat("\nSum of Fibonacci sequence:", sum_fibonacci, "\n")

#12 a reverse term
terms <- as.integer(readline("Enter the number of terms for Fibonacci sequence: "))
# fibonnaci vectors
fibonacci <- numeric(terms)
fibonacci[1] <- 0
fibonacci[2] <- 1
i <- 3
# print statement
cat("Fibonacci sequence in reverse order:\n")
while (i <= terms) {
  fibonacci[i] <- fibonacci[i - 1] + fibonacci[i - 2]
  i <- i + 1
}
sum_fibonacci <- sum(fibonacci)
i <- terms
while (i >= 1) {
  cat(fibonacci[i], ", ")
  i <- i - 1
}
cat("\nSum of Fibonacci sequence:", sum_fibonacci, "\n")

#13
# Enter a number for its multiplication table
num <- as.integer(readline("Enter a number for its multiplication table: "))
cat("Multiplication table of", num, ":\n")
# start while loop
sum <- 0
i <- 1
while (i <= 20) {
  result <- num * i
  sum <- sum + result
  cat(num, "x", i, "=", result, "\n")
  i <- i + 1
}
cat("The sum of multiples of ", num, "up to ", i, "is ", sum, ".")

#13 reverse
# Enter a number for its multiplication table
num <- as.integer(readline("Enter a number for its multiplication table: "))
cat("Multiplication table of", num, ":\n")
# start while loop
sum <- 0
i <- 20
while (i >= 1) {
  result <- num * i
  sum <- sum + result
  cat(num, "x", i, "=", result, "\n")
  i <- i - 1
}
cat("The sum of multiples of ", num, "up to 20 is ", sum, ".")

#14
# Taking input from the user
number <- as.integer(readline("Enter a number: "))
# Find the number of digits in the input number
num_digits <- nchar(as.character(number))
# Initialize the reversed number
reversed_number <- 0
i <- 1
# Reversing the number using a while loop
while (i <= num_digits) {
  digit <- number %% 10  # Extract the last digit
  reversed_number <- reversed_number + digit * (10 ^ (num_digits - i))  # Append the digit to the reversed number
  number <- number %/% 10  # Remove the last digit from the number
  i <- i + 1
}
# Displaying the reversed number
cat("Reversed number:", reversed_number, "\n")

# not using for loop
#14b alternative 
# Taking input from the user
number <- readline("Enter a number: ")
# Reverse the number
reverse <- paste(rev(strsplit(number, '')[[1]]), collapse = '')
# Displaying the reversed number
cat("Reversed number:", as.integer(reverse), "\n")

#15
# Get input from the user
base <- as.integer(readline("Enter the base number: "))
exponent <- as.integer(readline("Enter the exponent: "))
result <- 1
i <- 1
# Calculate power using a while loop
while (i <= exponent) {
  result <- result * base
  i <- i + 1
}
# Print the result
cat(base, "raised to the power of", exponent, "is", result, "\n")

#16
# Get input from the user
rows <- as.integer(readline("Enter the number of rows: "))
# Print the pattern
cat("Pattern:\n")
i <- 1
while (i <= rows) {
  j <- 1
  while (j <= i) {
    cat("* ", sep = "")
    j <- j + 1
  }
  cat("\n")
  i <- i + 1
}

#16 a
# Get input from the user
rows <- as.integer(readline("Enter the number of rows: "))
# Print the pattern
cat("Pattern:\n")
i <- rows
while (i >= 1) {
  j <- 1
  while (j <= i) {
    cat("* ", sep = "")
    j <- j + 1
  }
  cat("\n")
  i <- i - 1
}

#17 
# Get input from the user
rows <- as.integer(readline("Enter the number of rows: "))
# Print the pyramid pattern using while loop
i <- 1
while (i <= rows) {
  # Print spaces before the asterisks
  spaces <- rows - i
  cat(rep(" ", spaces), sep = "")
  # Print asterisks in increasing order
  asterisks <- 2 * i - 1
  j <- 1
  while (j <= asterisks) {
    cat("*", sep = "")
    j <- j + 1
  }
  cat("\n")  # Move to the next line for the next row
  i <- i + 1
}

#17 a 
# Get input from the user
rows <- as.integer(readline("Enter the number of rows: "))
# Print the reverse pyramid pattern using while loop
i <- rows
while (i >= 1) {
  # Print spaces before the asterisks
  spaces <- rows - i
  cat(rep(" ", spaces), sep = "")
  # Print asterisks in decreasing order
  asterisks <- 2 * i - 1
  j <- 1
  while (j <= asterisks) {
    cat("*", sep = "")
    j <- j + 1
  }
  cat("\n")  # Move to the next line for the next row
  i <- i - 1
}

#17b 
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the diamond: "))
i <- 1
# Upper half of the diamond
while (i <= rows * 2) {
  cat(rep(' ', (rows * 2 - i) %/% 2), rep('*', i), "\n", sep = '')
  i <- i + 2
}
i <- rows * 2 - 3
# Lower half of the diamond
while (i >= 1) {
  cat(rep(' ', (rows * 2 - i) %/% 2), rep('*', i), "\n", sep = '')
  i <- i - 2
}

#18 
# Get input from the user
size <- as.integer(readline("Enter the size of the square: "))
i <- 1
# Draw the hollow square using while loop
while (i <= size) {
  if (i == 1 || i == size) {
    cat(rep('* ', size), "\n", sep = '')
  } else {
    cat('* ', rep('  ', size - 2), '*\n', sep = '')
  }
  i <- i + 1
}

#19
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the half-pyramid: "))
i <- 1
# Print the half-pyramid using while loop
while (i <= rows) {
  cat(strrep(as.character(i), i), "\n")
  i <- i + 1
}

#19 a
# reverse, Get input from the user
rows <- as.integer(readline("Enter the number of rows for the half-pyramid: "))
# Print the half-pyramid using while loop
while (rows >= 1) {
  cat(strrep(as.character(rows), rows), "\n")
  rows <- rows - 1
}

#20 
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the half-pyramid: "))
i <- 1
# Print the half-pyramid with numbers using while loop
while (i <= rows) {
  j <- 1
  while (j <= i) {
    cat(j, " ")
    j <- j + 1
  }
  cat("\n")
  i <- i + 1
}

#20a reverse
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the half-pyramid: "))
# Print the half-pyramid with numbers using while loop
while (rows >= 1) {
  j <- 1
  while (j <= rows) {
    cat(j, " ")
    j <- j + 1
  }
  cat("\n")
  rows <- rows - 1
}

#21
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the triangle: "))
# Create a vector of uppercase alphabets
alphabets <- LETTERS
i <- 1
# Draw the right triangle of alphabets using while loop
while (i <= rows) {
  cat(paste(alphabets[1:i], collapse = ' '), "\n")
  i <- i + 1
}

#21 a
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the triangle: "))
# Create a vector of uppercase alphabets
alphabets <- LETTERS
# Draw the right triangle of alphabets using while loop
while (rows >= 1) {
  cat(paste(alphabets[1:rows], collapse = ' '), "\n")
  rows <- rows - 1
}

#22
# Get input from the user
rows <- as.integer(readline("Enter the number of rows for the reversed triangle: "))
i <- 1
# Draw the reversed triangle of letters using while loop
while (i <= rows) {
  # Print spaces based on row number
  cat(rep(" ", i - 1), sep = "")
  # Print letters in increasing order
  j <- 1
  while (j <= (rows - i + 1)) {
    if (j < (rows - i + 1)) {
      cat(LETTERS[j], " ")
    } else {
      cat(LETTERS[j], "\n")
    }
    j <- j + 1
  }
  i <- i + 1
}

# 39 Hip Hip Hooray
first_word <- readline("Enter a first word: ")
second_word <- readline("Enter a second word: ")
first_num <- as.integer(readline("Enter the number of times the first word is used: "))
second_num <- as.integer(readline("Enter the number of times the second word is used: "))
total_num <- as.integer(readline("Enter the number of times the phrase is spoken: "))
i <- 1
# start of while loop
while (i <= total_num) {
  j <- 1
  while (j <= first_num) {
    cat(first_word, "\n")
    j <- j + 1
  }
  k <- 1
  while (k <= second_num) {
    cat(second_word, "!\n")
    k <- k + 1
  }
  i <- i + 1
}

# 41 Hip Hip Hooray in R using while loop
first_word <- readline("Enter a first word: ")
second_word <- readline("Enter a second word: ")
first_num <- as.integer(readline("Enter the number of times the first word is used: "))
second_num <- as.integer(readline("Enter the number of times the second word is used: "))
total_num <- as.integer(readline("Enter the number of times the phrase is spoken: "))
i <- 1

# start of while loop
while (i <= total_num) {
  j <- 1
  while (j <= first_num) {
    cat(first_word, "\n")
    j <- j + 1
  }
  k <- 1
  while (k <= second_num) {
    cat(second_word, "!\n")
    k <- k + 1
  }
  i <- i + 1
}


### remove all memory from R console
rm(list = ls())
ls()
list.files()
dir()

