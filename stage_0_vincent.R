#create vectors
x=c("@vincent")
y=c("@vincentayobami")
#find Hamming_Distance Between vectors
hamming <- function(x, y, na.rm = TRUE) {
  size <- 1:max(length(x) & length(y))
  x <- x[size]
  y <- y[size]
  if (na.rm) {
    del <- is.na(x) & is.na(y)
    x <- x[del]
    y <- y[del]
  }
  sum(!((x != y) %in% FALSE))
}
Name=c("Lawal Vincent Ayobami")
Email=c("vincentlawal21@gmail.com")
Slack=c("@vincent")
Biostack=c("Genomics")
Twitter=c("@vincentayobami")
Hamming_Distance=c("undefined")
df=data.frame(Name, Email, Biostack, Twitter,Hamming_Distance)
print(df)