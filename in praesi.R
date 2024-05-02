plot(Boston$black, Boston$crim,      xlab = "Anteil an schwarzen Einwohnern", ylab = "Kriminalitätsrate pro Kopf", main = "Zusammenhang zwischen Kriminalitätsrate und Anteil an schwarzen Einwohnern", col = "blue", pch = 16)
abline(lm(crim ~ black, data = Boston), col = "red")
coef(lm(crim ~ black, data= Boston))

#meins


#zn
barplot(Boston$zn, main = "Anteil der Wohnungsgrundstück über 25.000 sq.ft.", ylab = "%")

#nox
barplot(Boston$nox, main = "Stickstoffoxidkonzentration", ylab = "Parts per 10 Million")
boxplot(Boston$nox, main = "Verteilung der Stickstoffoxidkonzentration", ylab = "Parts per 10 Million")

#dis
barplot(Boston$dis, main = "gewichteter Mittelwert der Enfernung zu fünf Arbeitszentren", ylab = "Meilen")
boxplot(Boston$dis, main = "gewichteter Mittelwert der Enfernung zu fünf Arbeitszentren", ylab = "Meilen")

#ptratio
barplot(Boston$ptratio, main = "Schüler-Lehrer-Verhältnis", ylab = "Schüler pro Lehrkraft")
boxplot(Boston$ptratio, main = "Schüler-Lehrer-Verhältnis", ylab = "Schüler pro Lehrkraft")

#medv
boxplot(Boston$medv, main = "Durchschnittswert von Eigenheimen", ylab = "in 1000 US-$")
barplot(Boston$medv, main = "Durschnittswert von Eigenheimen", ylab = "in 1000 US-$")


# KORRELATIONEN

# für medv-chas
# Subsetting der Daten für chas = 0
medv_chas_0 <- Boston$medv[Boston$chas == 0]

# Subsetting der Daten für chas = 1
medv_chas_1 <- Boston$medv[Boston$chas == 1]

# Boxplot
boxplot(medv_chas_0, medv_chas_1, names = c("nicht am Fluss", "am Fluss"), col = c("skyblue", "lightgreen"), main = "Grundstückskonzentration nach Lage am Fluss")
