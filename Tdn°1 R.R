a = 10
b = 5
resultat = a * b
print (resultat)
A = 7.2
B = 10.1
resultat = A + B
print (resultat)
rm(a,b,A,B,resultat)
v1 = c(1,2,3,4,5)
class(v1)
print(v1[3])
rm(v1)
v1 = 1:5
length(v1)
v2 = v1 + 3
v3 = 1:6
v4 = v3^2
v5 = v4/2
vjour = c("lundi","mardi","mercredi","jeudi","vendredi","samedi","dimanche")
class(vjour)
vjour[2]
vjour[7]
vbooleen = c(TRUE,FALSE)
class(vbooleen)
vdec = c(1.2,1.5,8.6)
class(vdec)
vdec [-3]
vmois = c("janvier","février","mars","avril","mai","juin","juillet","aout","septembre","octobre","novembre","decembre")
class(vmois)
vmois [c(1,2,3)]
vnegatif = c(-1,-5,-6,-9)
class(vnegatif)
vnegatif [c(1,4)]
vfruit = c("banane","pomme","avocat","citron","mangue")
class(vfruit)
vfruit[-c(1,2)]
vmanq = c(1,2,NA,3)
class(vmanq)
seq1 = seq(from = 1, to = 10,2)
length(seq1)
vrep = rep(c("A","B","C"), times = 5)
print(vrep)
vrep1 = rep(seq(1,3), times = 3)
print(vrep1)
vrep2 = rep(c(TRUE,FALSE), times = 4)
print(vrep2)
rm(list = ls())
valeatoire = runif(n = 5,min = 0,max = 1)
print(valeatoire)
mean(valeatoire)
max(valeatoire)
min(valeatoire)
median(valeatoire)
runif(n = 10,min = -5, max = 5)
runif(n = 100,min = 10, max = 20)
runif(n = 15,min = 50, max = 100)
echantillon = rnorm(n = 20, mean = -2 , sd = 3)
moyenne = mean(echantillon)
ecart_type = sd(echantillon)
print(paste("Moyenne : ", moyenne))
print(paste("Écart-type : ", ecart_type))
hist(echantillon)
echantillon1 = rnorm(n = 2000, mean = 0 , sd = 1)
moyenne = mean(echantillon1)
ecart_type = sd(echantillon1)
print(paste("Moyenne : ", moyenne))
print(paste("Écart-type : ", ecart_type))
hist(echantillon1)
quantile(echantillon1,probs = seq(0,1,0.01))





























