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