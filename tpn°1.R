rm(list = ls())
"Exercice 1"
"1"
iris
class(iris)
 "2"
 View(iris)
 
 "3"
 nrow(iris)
 
 "4"
 ncol(iris)
 
 "5"
 colnames(iris)
 
 "6"
 summary(iris)
 
 "7"
 iris[ , c("Sepal.Length","Species")]
 
 "8"
 iris[ c(100,103,105) , ]
 
 "9"
 iris[ 50:100 , ]
 
 "10"
 mean(iris$Sepal.Length)
 
 "11"
 median(iris$Sepal.Length)
 
 "12"
 sd(iris$Petal.Length)
 
 "13"
 quantile(iris$Petal.Width, probs = seq(from = 0.1, to = 0.9, by =0.1))
 
"EXERCICE 2"
"1"
dfmangas = read.csv("C:/Users/afrancisco/Downloads/manga.csv", header = TRUE, sep = ",", dec = ".")
dfanime = read.csv("C:/Users/afrancisco/Downloads/anime.csv", header = TRUE, sep = ",", dec = ".")

class(dfmangas)
class(dfanime)

"2"
View(dfanime)
View(dfmangas)

"3"
dim(dfanime)
dim(dfmangas)

"4"
mean(dfanime$Score)
mean(dfmangas$Score)

"5"
 sum(dfanime$Vote)
 sum(dfanime$Vote)
 
 "6"
 sd(dfanime$Score)
 sd(dfmangas$Score)
 
 "7"
 quantile(dfmangas$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
 quantile(dfanime$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
 
 "Les fonctions subset(), table() et prop.table()"
 "1"
 extraction = subset(dfmangas, Score > 9)
 nrow(extraction)
 
 "2"
 extraction1 = subset(dfmangas, Vote >= 200000)
 nrow(extraction1)
 
 "3"
 extraction2 = subset(dfmangas, Vote >= 200000 & Score >= 8)
 nrow(extraction2)
 
 "4"
 extraction3 = subset(dfmangas, Score >= 7 & Score <= 8)
 nrow(extraction3)
 
 "Filtre sur les Animes"
 "1"
 effectifRating = table(dfanime$Rating)
 print(effectifRating)
 length(effectifRating)
 prop.table(effectifRating)
 
 "2"
 extraction1 <- subset(dfanime, Rating == "R - 17+ (violence & profanity)")
 nrow(extraction1)
 
 "3"
 extraction2 = subset(dfAnime, Rating == "R - 17+ (violence & profanity)" &
                         Score >= 8)
 nrow(extraction2)
 
 "4"
 extraction3 = subset(dfanime, Rating != "R - 17+ (violence & profanity)")
 nrow(extraction3)
 
 "5"
 extraction4 = subset(dfanime, Rating %in% c("PG - Children","G - All Ages"))
 nrow(extraction4)
 
 "6"
 extraction5 = subset(dfanime, !Rating %in% c("PG - Children","G - All Ages"))
 nrow(extraction5)
 
 "7"
 extraction6 = subset(dfanime, Score >= 9 | Vote > 400000)
 nrow(extraction6)
 
 
 
 "Les fonctions rbind() et write.table()"
 "1"
 dfanime <- dfanime[ , c("Title","Score","Vote","Ranked")]
 dfmangas <- dfmangas[ , c("Title","Score","Vote","Ranked")]
 
 "2"
 dfAnime$Type <- "Anime"
 dfManga$Type <- "Manga"
 
 "3"
dfConcat = rbind(dfmangas,dfanime)
View(dfConcat)

 "4"
 write.table(x = dfConcat, file = "C:/Users/afrancisco/Downloads/ExportTp1.csv",
             sep = ";",row.names = FALSE)