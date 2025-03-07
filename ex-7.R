# Step 1: Define a variable and use if and if-else statements
x <- -5

# If statement
if (x > 0) {
  cat("x is a positive number.\n")
}

# If-else statement
if (x > 0) {
  cat("x is positive.\n")
} else if (x < 0) {
  cat("x is negative.\n")
} else {
  cat("x is zero.\n")
}

# Step 2: Use a for loop to calculate squares of elements in a vector
numbers <- c(1, 2, 3, 4, 5)
cat("Squares of numbers:\n")
for (num in numbers) {
  cat(num^2, "\n")
}

# Step 3: Use a while loop to print numbers from 1 to 5
counter <- 1
cat("Numbers from 1 to 5 using while loop:\n")
while (counter <= 5) {
  cat(counter, "\n")
  counter <- counter + 1
}

# Step 4: Use a repeat loop to calculate the sum of numbers
cat("Calculating sum using repeat loop:\n")
sum <- 0
i <- 1
repeat {
  sum <- sum + i
  cat("Adding", i, "- Current sum:", sum, "\n")
  i <- i + 1
  if (sum > 15) {
    cat("Sum exceeded 15. Exiting loop.\n")
    break
  }
}

cat("Program completed.\n")
