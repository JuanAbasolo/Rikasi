## Datuak sartuaz

dtk <- read.table(file = 'data/Ikasleen fitxaR.csv', 
                  header = TRUE, 
                  sep = ',', 
                  stringsAsFactors = F)

str(dtk)
summary(dtk)
dtk$LHn.zein.eredutan.hasi.zinen.ikasten. <- as.factor(dtk$LHn.zein.eredutan.hasi.zinen.ikasten.)
summary(dtk$LHn.zein.eredutan.hasi.zinen.ikasten.)
names(dtk)
dtk$Zein.Gelako.Aldratakoa.zara. <- as.factor(dtk$Zein.Gelako.Aldratakoa.zara.)
summary(dtk)
dtk$Batxilergoan.zein.eredutan.amaitu.zenuen..ikasten. <- as.factor(dtk$Batxilergoan.zein.eredutan.amaitu.zenuen..ikasten.)

names(dtk)

## Hemen beste data frame bat sortzen gabix
dtk2 <- dtk[, c(2, 6, 7)]

## Hamen datuen taula egiten dogu
table(dtk2[ ,2], dtk2[ ,3])

plot(table(dtk2[ ,2], dtk2[ ,3]))
plot(table(dtk2[ ,2], dtk2[ ,3]), shade = T)
plot(dtk2[ ,2])

table(dtk2[ ,2])
str(table(dtk2[ ,2]))
table(dtk2[ ,2])[-1]

barplot(table(dtk2[ ,2])[-1], col = 1, 
        main = "Ikasleen hasierako eredua")

barplot(table(dtk2[ ,2], dtk2[ ,3]))
str(table(dtk2[ ,2], dtk2[ ,3]))
barplot(table(dtk2[ ,2], dtk2[ ,3])[2:4, 1:3], 
        beside = T, 
        legend.text = T,
        main = 'Hizkuntz ereduak hasiera eta amaiera',
        xlab = 'amaierako eredua')

barplot(table(dtk2[ ,2], dtk2[ ,3])[2:4, 1:3], 
        beside = T, 
        # legend.text = T,
        main = 'Hizkuntz ereduak hasiera eta amaiera',
        xlab = 'amaierako eredua',
        col = 2:4)
legend('topleft', 
       col = 2:4, 
       legend = c("A", "B", "D"), 
       pch = 19, 
       # box.lwd = 0, 
       title = 'hasieran')
