# ON MY LAPTOP
batter_data <-
   read.csv(file = "C:/Users/Doops/Desktop/archive/Batting.csv")
fame_data <-
   read.csv(file = "C:/Users/Doops/Desktop/archive/HallOfFame.csv")


# # Load In Dataset
# batter_data <-
#     read.csv(file = "C:/Users/Dylan Ashby/Desktop/archive/Batting.csv")
# fame_data <-
#     read.csv(file = "C:/Users/Dylan Ashby/Desktop/archive/HallOfFame.csv")

# Ommit any NA in the batter data
batter_data <- na.omit(batter_data)

# Turn data into a data frame
batter_data <- data.frame(batter_data)
fame_data <- data.frame(fame_data)

# Get all players actually inducted
inducted_data <- fame_data[which(fame_data$inducted == "Y"), ]

# Get all players that were not inducted
not_data <- fame_data[which(fame_data$inducted == "N"), ]

# Retrieve batting stats of the inducted players
inducted_batter <-
    batter_data[which(batter_data$playerID %in% inducted_data$playerID), ]

# Retrieve batting stats of the not inducted players
not_batter <-
    batter_data[which(batter_data$playerID %in% not_data$playerID), ]




# QUESTION 1: Do players

# Find mean RBI for each player
inducted_rbi_means <- aggregate(RBI ~ playerID, data = inducted_batter, mean)
not_rbi_means <- aggregate(RBI ~ playerID, data = not_batter, mean)

# Exclude the names on the inducted list from the not inducted list
not_rbi_means <- not_rbi_means[which(
    !not_rbi_means$playerID %in% inducted_rbi_means$playerID), ]

# Perform Two-samples T-test
print(t.test(inducted_rbi_means$RBI, not_rbi_means$RBI, var.equal = FALSE))