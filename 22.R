# Create a vector containing the vegetarian details
vegetarian_details <- c("yes", "yes", "yes", "no", "yes", "no", "no", "yes", "yes", "yes")

# Calculate the count of vegetarian and non-vegetarian persons
count_table <- table(vegetarian_details)

# Extract counts for vegetarian and non-vegetarian
vegetarian_count <- count_table["yes"]
non_vegetarian_count <- count_table["no"]

# Compare the counts and determine the greater value
if (vegetarian_count > non_vegetarian_count) {
  greater_type <- "vegetarian"
} else if (non_vegetarian_count > vegetarian_count) {
  greater_type <- "non-vegetarian"
} else {
  greater_type <- "equal"  # In case of a tie
}

# Print the results
cat("Vegetarian count:", vegetarian_count, "\n")
cat("Non-vegetarian count:", non_vegetarian_count, "\n")
cat("The type of person with the greater total count is:", greater_type, "\n")