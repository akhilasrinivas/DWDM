# Sample data (replace with your actual data)
age <- c(32, 45, 29, 37, 55, 47, 25, 39, 42, 31, 28, 50, 34, 41, 36, 43, 33, 30)
body_fat <- c(25.3, 30.2, 22.5, 28.9, 33.1, 29.8, 18.6, 27.5, 26.9, 24.8, 21.7, 32.0, 23.4, 28.1, 25.7, 29.3, 23.9, 20.6)

# (a) Calculate mean, median, and standard deviation
age_mean <- mean(age)
age_median <- median(age)
age_sd <- sd(age)

body_fat_mean <- mean(body_fat)
body_fat_median <- median(body_fat)
body_fat_sd <- sd(body_fat)

cat("Age - Mean:", age_mean, "  Median:", age_median, "  Standard Deviation:", age_sd, "\n")
cat("%Fat - Mean:", body_fat_mean, "  Median:", body_fat_median, "  Standard Deviation:", body_fat_sd, "\n")

# (b) Draw boxplots
par(mfrow = c(1, 2))  # Create a 1x2 layout for plots
boxplot(age, main = "Boxplot of Age", ylab = "Age")
boxplot(body_fat, main = "Boxplot of %Fat", ylab = "%Fat")

# (c) Draw scatter plot and q-q plot
par(mfrow = c(1, 2))  # Reset layout to 1x2
plot(age, body_fat, main = "Scatter Plot", xlab = "Age", ylab = "%Fat")
qqnorm(body_fat, main = "Q-Q Plot for %Fat")
qqline(body_fat)
