# Load the data
data <- read_csv(file.choose())

# Convert Runs column to numeric (handle non-numeric entries like "DNB" or "TDNB" if any)
data$Runs <- as.numeric(as.character(data$Runs))

# Remove NA values resulting from non-numeric runs
clean_runs <- na.omit(data$Runs)

# Calculate mean, median, and standard deviation
mean_runs <- mean(clean_runs)
median_runs <- median(clean_runs)
sd_runs <- sd(clean_runs)

# Print the results
cat("Mean Runs:", mean_runs, "\n")
cat("Median Runs:", median_runs, "\n")
cat("Standard Deviation of Runs:", sd_runs, "\n")

# Load the dataset
data <- read.csv("Virat Kohli DataSet.csv")

# Convert Runs to numeric and remove NAs
data$Runs <- as.numeric(as.character(data$Runs))
data <- na.omit(data)

# 1. Simple Bar Plot (Match-wise Runs)
barplot(data$Runs, main="Match-wise Runs", xlab="Match", ylab="Runs", col="skyblue")

# 2. Histogram of Runs
hist(data$Runs, main="Histogram of Runs", xlab="Runs", col="lightgreen")

# 3. Scatter Plot (Runs vs Balls Faced)
data$BF <- as.numeric(as.character(data$BF))
plot(data$BF, data$Runs, main="Runs vs Balls Faced", xlab="Balls Faced", ylab="Runs", col="blue", pch=16)

# 4. Bar Graph: Runs by Opposition (average)
avg_by_opp <- aggregate(Runs ~ Opposition, data, mean)
barplot(avg_by_opp$Runs, names.arg=avg_by_opp$Opposition, las=2,
        main="Average Runs vs Opposition", col="orange", cex.names=0.7)

