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
barplot(Boston$dis, ylab = "Entfernung in Meilen")
boxplot(Boston$dis, ylab = "Entfernung in Meilen")

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


#für black-lstatus
plot(Boston$black, Boston$lstat, col = "blue", pch = 16, ylab = "prozentualer Anteil eines niedrigen Status", xlab = "Anteil der Schwarzen pro Stadt")
abline(lm(lstat ~ black, data = Boston), col = "red")
coef(lm(lstat ~ black, data= Boston))


#für zn-tax
#muss noch überarbeitet werden
plot(Boston$tax, Boston$zn, col = "blue", pch = 16, ylab = "Anteil der Wohngrundstücke über 25k sq.ft. in %", xlab = "Grundsteuersatz")
abline(lm(tax ~ zn, data = Boston), col = "red")
coef(lm(tax ~ zn, data= Boston))

#für rm-medv
#muss noch überarbeitet werden
plot(Boston$rm, Boston$medv, col = "blue", pch = 16, ylab = "Durchschnittswert von Eigenheimen", xlab = "Räume pro Wohnung")
abline(lm(rm ~ medv, data = Boston), col = "red")
coef(lm(rm ~ medv, data= Boston))





