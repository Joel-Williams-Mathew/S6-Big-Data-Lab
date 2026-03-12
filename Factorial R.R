n <- as.integer(readline(prompt = "Enter the number :"))

fact <- 1

for (i in 1:n) {
  fact <- fact*i
}

print(paste("Factorial :", fact))
