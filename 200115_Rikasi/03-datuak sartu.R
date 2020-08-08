## Datu orokorrak ---------------
##
## Script name: 03-datuak sartu
##
## Purpose of script: Datuak sartzeko bide desberdinak aztertu
##
## Author: Juan
##
## Date Created: 2020-01-15
##
## Email: juan.abasolo@ehu.eus
##
## Oharrak -----------------------
## Mintegirako pentsatua
## 
##   
##
## Libreriak ---------------------

## load up the packages we will need:  (uncomment as required)

## MicrosoftExcell fitxategietatik irakurtzeko
require(readxl)

## LibreOffice Calc artxiboetatik irakurtzeko
require(readODS)

## Web horrietan-edo datu taulak identifikatzeko 
require(XML)
## Internetetik zuzenean objektuak sortzeko
require(RCurl)
## Garbiketa automatizatzeko
require(rlist)



## Datuak ----------------------------

## Internetetik jaitsi datuak eta fitxategia sortu gurean
##
download.file(url = 'https://raw.githubusercontent.com/JuanAbasolo/Rikasi/master/data/raw/Ikasleen%20fitxaR.csv', 
              destfile = 'ikasleenfitxa.csv')


nireURLku <- getURL('https://www.euskaltzaindia.eus/index.php?&option=com_ehha&view=frontpage&Itemid=466&lang=eu&mapa=125',
                    .opts = list(ssl.verifypeer = FALSE))


nire.taula <- readHTMLTable(nireURLku)
nire.taula.garbitua <- list.clean(nire.taula, fun = is.null, recursive = FALSE)

str(nire.taula.garbitua)

str(nire.taula.garbitua[[1]])

nire.datuak <- nire.taula.garbitua[[1]]


nire.datuak$`Erantzuna (fon)`<- as.character(nire.datuak$`Erantzuna (fon)`)
summary(nire.datuak)

barplot(sort(table(nire.datuak$Lema)), 
        las = 2, main = 'Pajarito en vasco\nArianentzat', col = 'white')

## Garbitu bihar litzateke erantzun fonologikun zutabi.



## Jaitsi eta sortu dogun fitxategia irakurri
## eta data.framea sortu 

datuak <- read.table('ikasleenfitxa.csv', 
                     header = TRUE,
                     sep = ',',
                     stringsAsFactors = FALSE)

str(datuak)
summary(datuak)

datuak2 <- as.data.frame(sapply(datuak[,2:7], as.factor))

names(datuak2)
aldagaiak <- c('gela', 'herria', 'amaieraUrteaLH', 'eskola', 'ereduaLH', 'ereduaBatx')
names(datuak2) <- aldagaiak
barplot(table(datuak2$ereduaBatx)[1:3])

sapply(datuak2, function(x)barplot(table(x), las = 2))

       