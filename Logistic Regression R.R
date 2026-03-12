# Load dataset
data(iris)

# Convert species to binary classification
# Setosa = 1, Others = 0
iris$SpeciesBinary <- ifelse(iris$Species == "setosa", 1, 0)

# Train logistic regression model
model <- glm(SpeciesBinary ~ Sepal.Length, data = iris, family = binomial)

# Show model summary
summary(model)

# Predict probabilities
prob <- predict(model, type = "response")

# Convert probabilities to classes
predicted_class <- ifelse(prob > 0.5, 1, 0)

# -----------------------------
# CONFUSION MATRIX
# -----------------------------
conf_matrix <- table(Predicted = predicted_class, Actual = iris$SpeciesBinary)
print("Confusion Matrix:")
print(conf_matrix)

# -----------------------------
# ACCURACY
# -----------------------------
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
print(paste("Accuracy:", accuracy))

# -----------------------------
# GRAPH
# -----------------------------
plot(iris$Sepal.Length, iris$SpeciesBinary,
     main = "Logistic Regression on Iris Dataset",
     xlab = "Sepal Length",
     ylab = "Probability of Setosa",
     pch = 19,
     col = "blue")

# Sort values for smooth curve
ordered <- order(iris$Sepal.Length)

# Add logistic regression curve
lines(iris$Sepal.Length[ordered], prob[ordered],
      col = "red", lwd = 3)
