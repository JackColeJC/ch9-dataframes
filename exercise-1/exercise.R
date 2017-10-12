# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games of their season
# Hint: (google "Seahawks scores")
seahawks.scored <- c(48,20,26,17)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
seahawks.against <- c(17,13,13,13)

# Combine your two vectors into a dataframe
my.data.frame <- data.frame(seahawks.scored, seahawks.against, stringsAsFactors=FALSE)

# Create a new column "diff" that is the difference in points
my.data.frame$diff <- c(seahawks.scored - seahawks.against)

# Create a new column "won" which is TRUE if the Seahawks wom
my.data.frame$won <- my.data.frame$diff > 0

# Create a vector of the opponents
opponents <- c("chargers", "vikings", "chiefs", "raiders")

# Assign your dataframe rownames of their opponents
rownames(my.data.frame) <- opponents
