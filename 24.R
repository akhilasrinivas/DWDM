# Sample data
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

# Equal-frequency (equi-depth) partitioning
bins_eq_freq <- cut(marks, breaks = 3, labels = c("Low", "Medium", "High"),  
 include.lowest = TRUE)

# Equal-width partitioning
bins_eq_width <- cut(marks, breaks = c(50, 60, 70, 80), labels = c("Low", "Medium", 
 "High"), include.lowest = TRUE)

# Clustering
library(cluster)
kmeans_result <- kmeans(matrix(marks), centers = 3)
bins_clustering <- cutree(kmeans_result, k = 3)

# Plot histograms
par(mfrow = c(1, 3))
hist(marks, main = "Equal-Frequency Partitioning", col = "blue", breaks = 3)
hist(marks, main = "Equal-Width Partitioning", col = "green", breaks = c(50, 60, 70, 
80))
hist(marks, main = "Clustering", col = "purple", breaks = 3)

