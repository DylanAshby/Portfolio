# Read data
# ON MY LAPTOP
#batter_data <- read.csv(file = "C:/Users/Doops/Desktop/archive/Batting.csv")
#fame_data <- read.csv(file = "C:/Users/Doops/Desktop/archive/HallOfFame.csv")

# ON MY DESKTOP
batter_data <- read.csv(file = "C:/Users/Dylan Ashby/Desktop/archive/Batting.csv")
fame_data <- read.csv(file = "C:/Users/Dylan Ashby/Desktop/archive/HallOfFame.csv")

# Ommit any NA in the batter data
batter_data <- na.omit(batter_data)

# Turn data into a data frame
batter_data <- data.frame(batter_data)
fame_data <- data.frame(fame_data)

# Get all players actually inducted
inducted_data <- fame_data[which(fame_data$inducted == "Y"), ]

# Retrieve batting stats of the inducted players
inducted_batter <-
batter_data[which(batter_data$playerID %in% inducted_data$playerID), ]


# Create a list of dataframes where each dataframe is the
# career stats of a hall of fame player
career_stat_blocks <- list()

for (player in inducted_data) {
    stat_block <-
    data.frame(inducted_batter[which(inducted_batter$playerID == player[0]), ])
    append(career_stat_blocks, stat_block, )
}

#print(summary(inducted_batter))