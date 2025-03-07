library(readxl)
library(writexl)

# Step 1: Create sample data
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Score = c(90, 85, 88)
)

# Step 2: Define the file path for the Excel file
excel_file <- "sample_data.xlsx"

# Step 3: Write the data to an Excel file
write_xlsx(data, excel_file)
cat("Data written to Excel file:", excel_file, "\n")

# Step 4: Read the data back from the Excel file
read_data <- read_excel(excel_file)
cat("Data read from the Excel file:\n")
print(read_data)

# Step 5: Perform basic data manipulation
cat("\nFiltering rows where Age > 28:\n")
filtered_data <- subset(read_data, Age > 28)
print(filtered_data)

# Step 6: Write the updated data back to a new Excel file
updated_excel_file <- "updated_sample_data.xlsx"
write_xlsx(read_data, updated_excel_file)
cat("Updated data written to Excel file:", updated_excel_file, "\n")

# Step 7: Clean up by removing the created Excel files
file.remove(excel_file, updated_excel_file)
cat("Temporary Excel files removed.\n")

