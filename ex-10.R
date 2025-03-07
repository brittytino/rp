# Install and load data.table if not already installed
if (!requireNamespace("data.table", quietly = TRUE)) {
  install.packages("data.table")
}
library(data.table)

# Create a sample dataset
data <- data.frame(
  Category = c("A", "B", "A", "B", "C", "A", "C", "B"),
  Value = c(10, 20, 15, 25, 30, 10, 20, 15)
)

# Convert data.frame to data.table
data <- as.data.table(data)
# Perform faster group manipulation
grouped_summary <- data[, .(
  Total = sum(Value),
  Average = mean(Value),
  Count = .N
), by = Category]

# Print the grouped summary
print(grouped_summary)
