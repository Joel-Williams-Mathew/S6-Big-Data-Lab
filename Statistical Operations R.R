# Sample data
data <- c(10, 20, 30, 40, 50, 20, 30)

# -----------------------
# MEAN
# -----------------------
sum <- 0
n <- length(data)

for(i in data){
  sum <- sum + i
}

mean_value <- sum / n
print(paste("Mean:", mean_value))


# -----------------------
# MEDIAN
# -----------------------
# Sort data manually
sorted_data <- sort(data)

if(n %% 2 == 1){
  median_value <- sorted_data[(n + 1) / 2]
} else {
  median_value <- (sorted_data[n/2] + sorted_data[n/2 + 1]) / 2
}

print(paste("Median:", median_value))


# -----------------------
# MODE
# -----------------------
freq <- list()
max_count <- 0
mode_value <- NA

for(i in sorted_data){
  count <- sum(sorted_data == i)
  
  if(count > max_count){
    max_count <- count
    mode_value <- i
  }
}

print(paste("Mode:", mode_value))
