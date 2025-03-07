data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Score = c(90, 85, 88)
)

csv_file <- "sample_data.csv"
write.csv(data, csv_file, row.names = FALSE)

cat("Data written to CSV file:", csv_file, "\n")

read_data <- read.csv(csv_file)
cat("Data read from the CSV file:\n")
print(read_data)

cat("\nFiltering rows where Age > 28:\n")
filtered_data <- subset(read_data, Age > 28)
print(filtered_data)

updated_csv_file <- "updated_sample_data.csv"
write.csv(read_data, updated_csv_file, row.names = FALSE)
cat("Updated data written to CSV file:", updated_csv_file, "\n")

file.remove(csv_file, updated_csv_file)
cat("Temporary CSV files removed.\n")
