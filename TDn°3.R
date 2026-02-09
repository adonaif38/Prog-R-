"exercice 1"
install.packages("readxl")


pokemon = readxl :: read_excel(path = "L:/BUT/SD/Promo 2025/afrancisco/dataset/pokemon.xlsx", sheet= "pokemon")
summary (pokemon)
dim(pokemon)
ncol(pokemon)
nrow(pokemon)


pokemon$nom = as.factor(pokemon$nom)
pokemon$is_legendary = as.factor(pokemon$is_legendary)
pokemon$type = as.factor(pokemon$type)

summary(pokemon)
med =  median(pokemon$attack, na.rm = TRUE)
pokemon$attack_group = ifelse(pokemon$attack <= med, "attack+","attack-")
pokemon$attack_group <-as.factor(pokemon$attack_group)
summary(pokemon$attack_group) 

pokemon$waterfire = ifelse(pokemon$type %in% c("water","fire"), "yes", "no")
pokemon$waterfire = as.factor(pokemon$waterfire)
summary(pokemon$waterfire)

quartile = quantile(pokemon$attack, probs = 0.75)
quartile

pokemon$best = ifelse(pokemon$attack > quantile(pokemon$attack, probs = 0.75) & 
pokemon$defense > quantile(pokemon$defense, probs = 0.75) & 
pokemon$speed > quantile(pokemon$speed, probs = 0.75) ,"yes","no")
pokemon$best = as.factor(pokemon$best)
summary(pokemon$best)



requete = subset(pokemon, !is.na(weight_kg))
View(requete)

weight_kgNa =
height_mNA =