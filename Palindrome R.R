n <- readline(prompt = "Enter a number or string :")
man <- as.character(n)

chars <- strsplit(n, NULL)[[1]]

reversed <- paste(rev(chars), collapse = "")

if(n == reversed) {
  print("Yes! it is a palindrome")
}else {
    print("No! it is not a palindrome")
  }

