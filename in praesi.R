plot(Boston$black, Boston$crim,      xlab = "Anteil an schwarzen Einwohnern", ylab = "Kriminalitätsrate pro Kopf", main = "Zusammenhang zwischen Kriminalitätsrate und Anteil an schwarzen Einwohnern", col = "blue", pch = 16)
abline(lm(crim ~ black, data = Boston), col = "red")
coef(lm(crim ~ black, data= Boston))

boxplot(Boston$tax, xlab = "Steuersatz", ylab = "Wert")


#meins


#zn
barplot(Boston$zn, ylab = "Anteil in %")
boxplot(Boston$zn)

#nox
barplot(Boston$nox, ylab = "Teile pro 10 Million", ylim = c(0,1))
boxplot(Boston$nox, ylab = "Teile pro 10 Million", ylim = c(0.3,0.9))

#dis
barplot(Boston$dis, ylab = "Entfernung in Meilen")
boxplot(Boston$dis, ylab = "Entfernung in Meilen")

#ptratio
barplot(Boston$ptratio, ylab = "Schüler pro Lehrkraft")
boxplot(Boston$ptratio, ylab = "Schüler pro Lehrkraft")

#medv
boxplot(Boston$medv, ylab = "in 1000 US-$")
barplot(Boston$medv, ylab = "in 1000 US-$")


# KORRELATIONEN

# für medv-chas
medv_chas_0 <- Boston$medv[Boston$chas == 0]
medv_chas_1 <- Boston$medv[Boston$chas == 1]
boxplot(medv_chas_0, medv_chas_1, names = c("nicht am Fluss", "am Fluss"), col = c("skyblue", "lightgreen"), ylab= "Durchschnittswert von Eigenheimen in 1000 US-$")
cor(Boston$chas, Boston$medv, method = "spearman")


#für black-lstatus
plot(Boston$black, Boston$lstat, col = "blue", pch = 16, ylab = "prozentualer Anteil eines niedrigen Status", xlab = "Anteil der Schwarzen pro Stadt")
abline(lm(lstat ~ black, data = Boston), col = "red")
coef(lm(lstat ~ black, data= Boston))
cor(Boston$black, Boston$lstat)


#für zn-tax
#muss noch überarbeitet werden
plot(Boston$tax, Boston$zn, col = "blue", pch = 16, ylab = "Anteil der Wohngrundstücke über 25k sq.ft. in %", xlab = "Grundsteuersatz")
abline(lm(zn ~ tax, data = Boston), col = "red")
coef(lm(zn ~ tax, data= Boston))
cor(Boston$tax, Boston$zn)


#für rm-medv
#muss noch überarbeitet werden
plot(Boston$rm, Boston$medv, col = "blue", pch = 16, ylab = "Durchschnittswert von Eigenheimen", xlab = "Räume pro Wohnung")
abline(lm(medv ~ rm, data = Boston), col = "red")
coef(lm(medv ~ rm, data= Boston))
cor(Boston$rm, Boston$medv)


#für zn-medv
#muss noch überarbeitet werden
plot(Boston$medv, Boston$zn, col = "blue", pch = 16, ylab = "Anzahl der Grundstücke über 25.000 sq.ft.", xlab = "Durchschnittswert von Eigenheimen")
abline(lm(zn ~ medv, data = Boston), col = "red")
coef(lm(zn ~ medv, data= Boston))
cor(Boston$medv, Boston$zn)
summary(Boston$zn)

cor(Boston$nox, Boston$rad)
coef(lm(dis ~ nox, data = Boston))
coef(lm(nox ~ rad, data = Boston))

#fpr dis-rad
plot(Boston$)