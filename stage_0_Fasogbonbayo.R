# Hello world,

cat("My Mame: Fasogbon Ilemobayo Victor") # my surname is Fasogbon

cat("My Email address: fasogbonilemobayo@gmail.com")

cat("My slack username: @Fasogbonbayo")

cat("My Biostack name: Genomics")

cat("My Twitter Handle: @Fasogbonfash")

# Calculating the hamming distance "My slack username: @Fasogbonbayo" and "My Twitter Handle: @Fasogbonfash"

string1 <- "Fasogbonbayo"
string2 <- "Fasogbonfash"
count <- 0 # counter

# Gets the number of characters in a string 
# Also gets if both are equal
# nchar counts the number of characters in a string.
min_length = min(nchar(string2), nchar(string2))

# converting strings to array of strings 
# using the strsplit function
string1_split = strsplit(string1, "")[[1]]

string2_split = strsplit(string2, "")[[1]]


for (i in 1:min_length){
	if (string1_split[i] != string2_split[i]){
		count = count + 1}}

cat(count)

# I love team-lander