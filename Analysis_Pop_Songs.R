df <- read.csv("songs_normalize.csv", stringsAsFactors = F)

print(any(is.na(df)))

lin_reg = lm(df$popularity ~ df$duration_ms + df$danceability + df$energy 
             + df$speechiness + df$acousticness + df$instrumentalness 
             + df$liveness + df$valence + df$tempo + df$key + df$year)

result <- summary(lin_reg)

print(result)

lin_reg2 <- lm(df$popularity ~ df$duration_ms + df$loudness)

result2 <- summary(lin_reg2)

print(result2)

print(cor(select(df, -genre, -mode, -key, -song, -artist, -explicit), method = c("pearson")))

lin_reg3 <- lm(df$popularity ~ df$duration_ms + df$energy)

result3 <- summary(lin_reg3)

print(result3)
