# Hello world,

cat("My Name: Fasogbon Ilemobayo Victor\n") # my surname is Fasogbon

cat("My Email address: fasogbonilemobayo@gmail.com\n")

cat("My slack username: @Fasogbonbayo\n")

cat("My Biostack name: Genomics\n")

cat("My Twitter Handle: @Fasogbonfash\n")

# Calculating the hamming distance "My slack username: @Fasogbonbayo" and "My Twitter Handle: @Fasogbonfash"

string1 <- "Fasogbonbayo"
string2 <- "Fasogbonfash"

count <- sum(string1 != string2)


cat(paste("Hamming Distance:",count,"\n"))