y <- 2
z <- 3

text1 <- "TEST"
text2 <- "HELLO"

print(y)

#for (x in 1:10){
    #print(z)
#}

paste(text1, text2)

print(getwd())
setwd("C:/Users/Dylan Ashby/Desktop/archive")
print(getwd())

# Create a list of dataframes where each dataframe is the
# career stats of a hall of fame player
#career_stat_blocks <- list()

#for (player in inducted_data) {
#    stat_block <-
#    data.frame(inducted_batter[which(inducted_batter$playerID == player[0]), ])
#    append(career_stat_blocks, stat_block, )
#}

#print(summary(inducted_batter))

#inducted_batter2 <- inducted_batter[,-1]
#rownames(inducted_batter2) <- inducted_batter[,1]

#result <- aggregate(RBI ~ playerID, data = inducted_batter, paste, collapse = ",")


#fame_data <- fame_data[which(!fame_data$playerID %in% inducted_data), ]


# fame_names <- fame_data[which(fame_data$inducted == "Y"), ]
# lame_names <- fame_data[which(fame_data$inducted == "N"), ]

# names1 <- unique(fame_names)
# names2 <- unique(lame_names)
# names2 <- unique

# print(nrow(names1))
# print(nrow(names2))

# write.csv(not_means, "C:\\Users\\Dylan Ashby\\Desktop\\Output.csv", )

# Read data
# ON MY LAPTOP
#batter_data <-
#    read.csv(file = "C:/Users/Doops/Desktop/archive/Batting.csv")
#fame_data <-
#    read.csv(file = "C:/Users/Doops/Desktop/archive/HallOfFame.csv")