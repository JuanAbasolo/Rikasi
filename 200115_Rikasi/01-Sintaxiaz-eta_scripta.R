################ 01 Sintaxiaz-eta dokumentuko R kodea #############

## Lerro batean zagozenean ctrl+enter sakotzen dozunean, 
## lerro hori terminalean ebaluatzen dozu, RStudio-n zagozanean. 
## Zutzako oharrak hartzeko, lerroa '#' sinboloagaz hasi behar dozu, lerro honeen antzera.
## Ohituraz bi ipinten dira holakoetarako, lerro 'ebaluagai' bat "ixildu" nahi badozu,
## Aurretik bakarra ipintzeko ohitura dago, eto hori labur daiteke ctrl+shift+c sakatuta,
## 'to coment' esaten jako horreri (komentatu, comentar... bistan danez)

## Lehenengo mintegikoa segidan =======================

## Aritmetikatik hasi ---------------

## 
3

##

3+2+3+4

## Pizza zatiak

nagusia <- 3
nagusialength(diag(4))
txikia <- 2
txikia
ama <- 3
ama
aita <- 4
aita

danok.sum <- nagusia+txikia+ama+aita
danok.sum

##
danok.vector <- c(nagusia, txikia, ama, aita)
danok.vector

## 

pizza <- 6

danok.sum/pizza

danok.vector/pizza

## Funtzinoak --------------------------

## Batazbestekoa kalkulatu 'gordinik'
danok.sum/4

danok.vector

# ?sum

sum(danok.vector)
length(danok.vector)

sum(danok.vector)/length(danok.vector)

## Gure funtzino bat
f.batazbeste <- function(zenbakizko.bektorea)sum(zenbakizko.bektorea)/length(zenbakizko.bektorea)

f.batazbeste(danok.vector)

## Gure lehengo funtzinoa, beste era batera idatzita
f.batazbeste <- function(x){
  sum(x)/length(x)
}

## Beste funtzino batzuk
sum(danok.vector)
length(danok.vector)
max(danok.vector)
min(danok.vector)
quantile(danok.vector)
sd(danok.vector)
summary(danok.vector)
ls()
getwd()

## Bigarren funtzioa. Batez bestekoa, baina minimoa eta maximoa kenduta
f.batazbesteko.inausia <- function(x){
  (sum(x) -max(x) -min(x))/(length(x)-2)
}

## Elementu motak ---------------------------

nortzuk <- c('nagusia', 'txikia', 'ama', 'aita')
class(nortzuk)
str(nortzuk)

olentzerori <- c(TRUE, TRUE, TRUE, FALSE)
class(olentzerori)
str(olentzerori)

olentzerok <- c('oparia', 'oparia', 'oparia', 'ikatza')
olentzerok <- as.factor(olentzerok)
class(olentzerok)
str(olentzerok)

zenbat.pizza <- c(3, 2, 3, 4)
class(zenbat.pizza)
str(zenbat.pizza)

zenbat.turroi <- c('nahiko', 'nahiko', 'gitxi', 'asko')
zenbat.turroi <- ordered(zenbat.turroi, levels = c('gitxi', 'nahiko', 'asko'))
class(zenbat.turroi)
str(zenbat.turroi)



df.gabonak <- data.frame(olentzerori.idatzi = olentzerori,
                         olentzerok.ezer.ekarri = olentzerok,
                         zenbat.pizza = zenbat.pizza,
                         zenbat.turroi = zenbat.turroi,
                         row.names = nortzuk
                         )
df.gabonak

str(df.gabonak)
summary(df.gabonak)
plot(df.gabonak$zenbat.pizza, zenbat.turroi)

## Indexazinoa ----------------------------------
nortzuk


nortzuk[1]

nortzuk[2]

nortzuk[2:4] == nortzuk[-1]

nortzuk[c(1,4)]


zenbat.pizza

zenbat.pizza[c(1,4)]

zenbat.pizza[c(TRUE, FALSE, FALSE, TRUE)]


## Probea:
zenbat.pizza[c(1,4)] == zenbat.pizza[c(TRUE, FALSE, FALSE, TRUE)]


## Kuxkuxero

df.gabonak[, 'zenbat.turroi']
df.gabonak$zenbat.turroi
df.gabonak[, 4]
df.gabonak[ , c(FALSE, FALSE, FALSE, TRUE)]

df.gabonak["aita",]
df.gabonak[4,]
df.gabonak[c(FALSE, FALSE, FALSE, TRUE), ]

df.gabonak[c(FALSE, TRUE, FALSE, TRUE), c(FALSE, TRUE, FALSE, TRUE)]

df.gabonak$zenbat.turroi == 'gitxi'

sum(df.gabonak$zenbat.turroi == 'gitxi')


df.gabonak[df.gabonak$zenbat.turroi == 'gitxi', 1:3]


## Nirea ------

