# Read data
# ON MY LAPTOP
#batter_data
#   <- read.csv(file = "C:/Users/Doops/Desktop/archive/Batting.csv")
#fame_data
#   <- read.csv(file = "C:/Users/Doops/Desktop/archive/HallOfFame.csv")

# ON MY DESKTOP
batter_data <-
    read.csv(file = "C:/Users/Dylan Ashby/Desktop/archive/Batting.csv")
fame_data <-
    read.csv(file = "C:/Users/Dylan Ashby/Desktop/archive/HallOfFame.csv")

# Ommit any NA in the batter data
batter_data <- na.omit(batter_data)

# Turn data into a data frame
batter_data <- data.frame(batter_data)
fame_data <- data.frame(fame_data)

# Get all players actually inducted
inducted_data <- fame_data[which(fame_data$inducted == "Y"), ]

#exclude_names <- list(inducted_data$playerID)
exclude_names <- list(rownames(fame_data[which(fame_data$playerID %in% inducted_data$playerID), ]))
#fame_data <- fame_data[which(rownames(fame_data) != exclude_names), ]
fame_data2 <- fame_data[rownames(fame_data) = exclude_names,]

#fame_data2 <- fame_data[-c()]
#print(fame_data2)

not_data <- fame_data[which(fame_data$inducted == "N"), ]

# Retrieve batting stats of the inducted players
inducted_batter <-
batter_data[which(batter_data$playerID %in% inducted_data$playerID), ]

not_batter <-
batter_data[which(batter_data$playerID %in% not_data$playerID), ]

inducted_means <- aggregate(RBI ~ playerID, data = inducted_batter, mean)
not_means <- aggregate(RBI ~ playerID, data = not_batter, mean)

total_inducted_mean <- mean(inducted_means$RBI)
total_not_mean <- mean(not_means$RBI)

print(total_inducted_mean)
print(total_not_mean)

write.csv(fame_data2, "C:\\Users\\Dylan Ashby\\Desktop\\Output.csv", )