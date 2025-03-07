# Define a function to find the maximum of given numbers
find_max <- function(numbers) {
  max_value <- max(numbers)
  return(max_value)
}

# Create a vector of given numbers
numbers <- c(10, 25, 37, 42, 5)

# Call the function and find the maximum value
max_number <- find_max(numbers)

# Print the maximum value
cat("The maximum number is:", max_number, "\n")