
library("MASS")
View(Boston)
?Boston
summary(Boston)
colnames(Boston) <- c("Kriminalität", "Großgrundstücke", "Nicht-Einzelhandel", "Fluss", "Stickoxid", "Räume", "1940", "Arbeitsamt", "Radialstraße", "Steuer", "SchülerLehrer", "Schwarze", "Status", "Hauswert")
data(Boston) # setzt den Datensatz zurück

# Installiere und lade ggplot2
install.packages("ggplot2")
library(ggplot2)

chas0 <- which(Boston$chas == 0)
chas1 <- which(Boston$chas == 1)
plot(chas0, Boston$crim)
plot(chas1, Boston$crim)
pie(chas0)
summary(chas0)
summary(chas1)
summary(Boston)
barplot(Boston$chas)

par(mfrow=c(1,1))
boxplot(chas0)
boxplot(chas1)
hist(chas0)
hist(Boston$crim)





# Daten nach Flusscharakteristik gruppieren
grouped_data <- aggregate(crim ~ chas, data = Boston, FUN = mean)
# Farben für das Tortendiagramm
colors <- c("red", "blue")
# Tortendiagramm erstellen
pie(grouped_data$crim, labels = c("Nicht am Fluss", "Am Fluss"),    col = colors,    main = "Anteil der Kriminalitätsrate nach Flusscharakteristik")
par(mfrow=c(1,2))
pie(Boston$chas)
barplot(Boston$crim)
hist(Boston$cim, breaks = 20)
par(mfrow=c(1,1))

data <- c(1, 2, 1, 2, 1, 1, 2)

# Index der Elemente mit den Werten 1 und 2 darstellen
index <- which(data == 1 | data == 2)
print(index)


summary(Boston$medv)
hist(Boston$medv)
plot(Boston$medv)

?Boston

