# Load In Dataset
batter_data <-
    read.csv(file = "C:/Users/Dylan Ashby/Desktop/archive/Batting.csv")
salary_data <-
    read.csv(file = "C:/Users/Dylan Ashby/Desktop/archive/Salaries.csv")
fame_data <-
    read.csv(file = "C:/Users/Dylan Ashby/Desktop/archive/HallOfFame.csv")
team_data <-
    read.csv(file = "C:/Users/Dylan Ashby/Desktop/archive/Teams.csv")

# Ommit any NA in the batter data
batter_data <- na.omit(batter_data)

# Turn data into a data frame
batter_data <- data.frame(batter_data)
fame_data <- data.frame(fame_data)

# Get all players actually inducted
inducted_data <- fame_data[which(fame_data$inducted == "Y"), ]

# Get all players that were not inducted
not_data <- fame_data[which(fame_data$inducted == "N"), ]


# QUESTION 1: From players nominated for the hall of fame, do the ones who
#             are actually inducted score more RBI's than those who are not?

# Retrieve batting stats of the inducted players
inducted_batter <-
    batter_data[which(batter_data$playerID %in% inducted_data$playerID), ]

# Retrieve batting stats of the not inducted players
not_batter <-
    batter_data[which(batter_data$playerID %in% not_data$playerID), ]

# Find mean RBI for each player
inducted_rbi_means <- aggregate(RBI ~ playerID, data = inducted_batter, mean)
not_rbi_means <- aggregate(RBI ~ playerID, data = not_batter, mean)

# Exclude the names on the inducted list from the not inducted list
not_rbi_means <- not_rbi_means[which(
    !not_rbi_means$playerID %in% inducted_rbi_means$playerID), ]

# Perform Two Samples T-test
print("TWO SAMPLE T-TEST ---------- RBI MEANS")
print("Alpha value: 0.05")
print(t.test(inducted_rbi_means$RBI, not_rbi_means$RBI, var.equal = FALSE))


# Question 2: From players nominated to the hall of fame, do the ones who are
#             inducted have a higher salary than those who are not?

# Retrieve salary stats of the inducted players
inducted_salary <-
    salary_data[which(salary_data$playerID %in% inducted_data$playerID), ]

# Retrieve salary stats of the not inducted players
not_salary <-
    salary_data[which(salary_data$playerID %in% not_data$playerID), ]

# Find mean salary for each player
inducted_sal_means <- aggregate(salary ~ playerID, data = inducted_salary, mean)
not_sal_means <- aggregate(salary ~ playerID, data = not_salary, mean)

# Exclude the names on the inducted list from the not inducted list
not_sal_means <- not_sal_means[which(
    !not_sal_means$playerID %in% inducted_sal_means$playerID), ]

# Perform Two Samples T-test
print("TWO SAMPLE T-TEST ---------- SALARY MEANS")
print("Alpha value: 0.05")
print(t.test(inducted_sal_means$salary, not_sal_means$salary, var.equal =FALSE))


# Question 3: What team has a hall of fame player the most number of years
#             combined accross all players?

# Make a list of the team names and sort out repeats
teams <- unique(team_data$teamID)

# Create an empty dataframe with the team names in one column, and a count of
# their hall of fame batters in the next.
team_fame <- data.frame(matrix(ncol = 2, nrow = length(teams)))
names <- c("teamID", "hofNo")
colnames(team_fame) <- names

# Set the teamID column with the list of team names, and the hofNo column to 0's
team_fame$teamID <- teams
team_fame$hofNo <- 0


# Look for each time a batter was on a team and increment their tally
for (team in inducted_batter$teamID){
    team_fame$hofNo[which(team == team_fame$teamID)] <-
        team_fame$hofNo[which(team == team_fame$teamID)] + 1
}

# Exclude items in the list with zero talles
team_fame <- team_fame[which(!team_fame$hofNo == 0), ]

# Put the items in descending order based on tally value
team_fame <- team_fame[order(team_fame$hofNo, decreasing = TRUE), ]

# Print the list
print(team_fame)

# Show just the top item
print("What team has the most hall of fame batters?")
print(head(team_fame, 1)$teamID)