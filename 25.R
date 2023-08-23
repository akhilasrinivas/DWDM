# Given strike rates
strike_rates <- c(100, 70, 60, 90, 90)

# (a) Min-Max Normalization
min_max_normalized <- (strike_rates - min(strike_rates)) / (max(strike_rates) - min(strike_rates))
cat("Min-Max Normalized:", min_max_normalized, "\n")

# (b) Z-Score Normalization
z_score_normalized <- (strike_rates - mean(strike_rates)) / sd(strike_rates)
cat("Z-Score Normalized:", z_score_normalized, "\n")

# (c) Z-Score Normalization using Mean Absolute Deviation (MAD)
mean_abs_dev <- mean(abs(strike_rates - mean(strike_rates)))
z_score_normalized_mad <- (strike_rates - mean(strike_rates)) / mean_abs_dev
cat("Z-Score Normalized (MAD):", z_score_normalized_mad, "\n")

# (d) Normalization by Decimal Scaling
max_digit_count <- max(nchar(as.character(strike_rates)))
scaled_normalized <- strike_rates / 10^max_digit_count
cat("Decimal Scaling Normalized:", scaled_normalized, "\n")
