if (!requireNamespace("brio", quietly = TRUE)) {
  install.packages("brio")
}

library(brio)

input_file <- "example_input.txt"
output_file <- "example_output.txt"

brio::write_lines(c(
  "Line 1: This is a test.",
  "Line 2: Using the brio package.",
  "Line 3: It makes file operations easier!"
), input_file)

file_content <- brio::read_lines(input_file)

cat("Content of the input file:\n")
print(file_content)

modified_content <- paste("Modified ->", file_content)

brio::write_lines(modified_content, output_file)

cat("\nModified content written to", output_file, "\n")
output_content <- brio::read_lines(output_file)
cat("Content of the output file:\n")
print(output_content)
