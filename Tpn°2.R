"Exercice 1"

df = read.csv(file = "L:/BUT/SD/Promo 2025/afrancisco/R studio/fao.csv", header = TRUE ,sep = ";", dec = ",")
class(df)
nrow(df)
summary(df)

"Exercice 2"
mean(df$Dispo_alim, na.rm=TRUE)

sum(df$Population, na.rm=TRUE)

sd(df$Export_viande, na.rm=TRUE)
sd(df$Import_viande, na.rm=TRUE)

median(df$Prod_viande, na.rm=TRUE)
quantile(df$Dispo_alim, prob = c(0.25,0.5,0.75))
quantile(df$Import_viande, seq(0,1,0.01))

"Exercie 3"
rang = order(df$Population)
resultats = head(df[ rang, ], n = 5)
View(resultats)

rang2 = order(df$Population, decreasing = TRUE)
resultats1 = head(df[ rang2, ], n = 5)
View(resultats1)

rang3 = order(df$Prod_viande, decreasing = TRUE)
resultas2 = head(df[ rang3 , ], n = 5)
View(resultas2)

rang4 = order(df$Import_viande, decreasing = TRUE)
resultas3 = head(df[ rang4 , ], n = 5)
View(resultas3)

"exercice 3"

resultats1 = subset(df, Dispo_alim > 2500 & Import_viande >= 1000)
View(resultats1)

resultat = subset(df, Dispo_alim > 3500  & Import_viande > 1000)
View(resultat)

resultat = subset(df, Nom %in% c("France","Belgique"))
View(resultat)

"exercice 4"
df$Part_export = df$Export_viande/df$Prod_viande

df$Dispo_alim_pays = df$Dispo_alim*df$Population

write.table(x = df, file = "ExportTp2.csv")

dispo_alim_mondiale = sum(df$Dispo_alim_pays, na.rm=TRUE)
dispo_alim_mondiale

dispo_alim_mondiale/2300

"exercice 5"
plot(x = df$Prod_viande,
     y = df$Export_viande, 
     main = "Pays : Prod_viande / Export_viande")

cor(x = df$Prod_viande, 
    y = df$Export_viande)

matriceCor = cor(df[ , - 1] , use = "complete.obs")
matriceCor = round(matriceCor , 2)
View(matriceCor)


install.packages("corrplot")
library(corrplot)
corrplot(matriceCor, method="circle")