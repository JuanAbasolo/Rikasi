# Rn ikasteko mintegiko zenbait elementu hemen

Baldintzak:

+ R instalauta
+ RStudio instalauta
+ Estatistikako jakinduria eskura (apunteak izan daitekez, jakina)

## Aurrekoak

Ikastaroa ez leuke izan beharko honek; baina, halan eta guztiz be, ikasi beharreko kontu batzuk identifikatu beharra dago eta hurrenkera bat emon beharko jako, ikaskuntza errazteko.

Zeozenbat ordutan ekin eta gero, neuk uste dot:

+ danok datuak sartzeko bideren bat ezagutuko dogula
+ gure datuen araberako analisia egiten jakingo dogula
+ beste datu batzuakin edo/eta beste analisi batzuakin behar egiteko moduak ikertzen asmauko dogula

Horretarako, oinarrizko pare bat helburutara aileagaten ahalegindu behar dogu:

+ Rko sintaxia, funtzioen ezaugarriak eta elementuenak ezagutzea eta identifikatzea
+ RStudio interface aurreratuko oinarrizko hainbat erabilera

## Hasiera

Lehenengo pausuan ez dogu erabiliko RStudio, R online konpilatzeko aukerea eskaintzen daben web orrietan trebatuko gara [lehenen honetan](https://rdrr.io/snippets/), eta gero hurrengoetan [*](https://www.tutorialspoint.com/execute_r_online.php), [** ](https://rextester.com/l/r_online_compiler) ... , ahalik eta erarik gordinean aztertu ahal izateko; azterketa horretatik oinarrizko ezaugarri eta elementuak identifikatzeko gai izan behar geunke.

Trebatzeko: `##` sinboloen artean dauden testuak (zenbakiak, edo dana dalakoa) kopiatu eta konpilatu beharko dituzu web orri horretan.

```
## 

3

##

3+2+3+4

## Pizza zatiak

nagusia <- 3
txikia <- 2
ama <- 3
aita <- 4

danok <- nagusia+txikia+ama+aita

nagusia
txikia
ama
aita

danok

##
nagusia <- 3
txikia <- 2
ama <- 3
aita <- 4

danok <- c(nagusia, txikia, ama, aita)

danok

##

pizza <- 6

nagusia <- 3
txikia <- 2
ama <- 3
aita <- 4

danok.sum <- nagusia+txikia+ama+aita

danok.sum/pizza

danok.vector <- c(nagusia, txikia, ama, aita)

danok.vector/pizza

## Batez bestekoa, gordinik

nagusia <- 3
txikia <- 2
ama <- 3
aita <- 4

danok.sum <- nagusia+txikia+ama+aita
danok.sum/4

danok.vector <- c(nagusia, txikia, ama, aita)

sum(danok.vector)
length(danok.vector)

sum(danok.vector)/length(danok.vector)

## Gure funtzino bat

f.batezbeste <- function(zenbakizko.bektorea)sum(zenbakizko.bektorea)/length(zenbakizko.bektorea)

nagusia <- 3
txikia <- 2
ama <- 3
aita <- 4

danok.vector <- c(nagusia, txikia, ama, aita)

f.batezbeste(danok.vector)

## Gure lehengo funtzinoa, beste era batera idatzita

f.batezbeste <- function(x){
  sum(x)/length(x)
  }

## Funtzino batzuk (milaka dagoz)

nagusia <- 3
txikia <- 2
ama <- 3
aita <- 5

danok.vector <- c(nagusia, txikia, ama, aita)

sum(danok.vector)
length(danok.vector)
max(danok.vector)
min(danok.vector)
quantile(danok.vector)
sd(danok.vector)
summary(danok.vector)

## Bigarren funtzioa. Batez bestekoa, baina minimoa eta maximoa kenduta

f.batezbesteko.inausia <- function(x){
  (sum(x) -max(x) -min(x))/(length(x)-2)
}

## Datu motak

nagusia <- 3
txikia <- 2
ama <- 3
aita <- 5

nortzuk <- c('nagusia', 'txikia', 'ama', 'aita')
str(nortzuk)
olentzerori <- c(TRUE, TRUE, TRUE, FALSE)
str(olentzerori)
olentzerok <- c('oparia', 'oparia', 'oparia', 'ikatza')
olentzerok <- as.factor(olentzerok)
str(olentzerok)
zenbat.pizza <- c(nagusia, txikia, ama, aita)
zenbat.turroi <- c('nahiko', 'nahiko', 'gitxi', 'asko')
zenbat.turroi <- ordered(zenbat.turroi, levels = c('gitxi', 'nahiko', 'asko'))
str(zenbat.turroi)


df.gabonak <- data.frame(olentzerori,
                         olentzerok,
                         zenbat.pizza,
                         zenbat.turroi,
                         row.names = nortzuk
                         )
str(df.gabonak)
summary(df.gabonak)
plot(df.gabonak$zenbat.pizza, zenbat.turroi.ord)

## Kuxkuxero
df.gabonak["aita",]
df.gabonak[, 'zenbat.turroi']
df.gabonak$zenbat.turroi=='gitxi'

df.gabonak[c(T,T,F,F),]
df.gabonak[,c(F,T,F,F)]

## Balio bereziak -------------------
c(-1, 0, 1) / 2

c(-1, 0, 1) / 0

```

## Ariketa

Orain zuk sortu behar dozu jairen baten ganeko data frame bat mahai inguruko datuekin; gitxienez, holako mota bana daukala:

* Zenbakizko bektorea
* Bektore logikoa
* Bektore kategorikoa
* Bektore ordinala

Dokumentatu pausuak eta arazoak.

`summary(zure.data.frame)` funtzinoaren urteran oinarrituta, aztertu muturreko balioak
