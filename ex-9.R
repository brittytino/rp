# Install and load dplyr if not already installed
if (!requireNamespace("dplyr", quietly = TRUE)) {
  install.packages("dplyr")
}
library(dplyr)

# Create a sample dataset
data <- data.frame(
  Category = c("A", "B", "A", "B", "C", "A", "C", "B"),
  Value = c(10, 20, 15, 25, 30, 10, 20, 15)
)

# Group data by Category and calculate the sum and mean of Value
grouped_summary <- data %>%
  group_by(Category) %>%
  summarize(
    Total = sum(Value),
    Average = mean(Value),
    Count = n()
  )

# Print the grouped summary
print(grouped_summary)
