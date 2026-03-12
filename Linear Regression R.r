# Load iris dataset
data(iris)

# View first few rows
head(iris)

# Fit linear regression model
model <- lm(Petal.Length ~ Sepal.Length, data = iris)

# Show model summary
summary(model)

# Plot the data points
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Linear Regression using Iris Dataset",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     pch = 19,
     col = "blue")

# Add regression line
abline(model, col = "red", lwd = 2)
