## ---------------------------
##
## Script name: euskaltzaindiatikjaitsi
##
## Purpose of script: EHHAko datuak jaitsi Euskaltzaindiako web gunetik, gorde csv formatuan eta 
##    denak batu data frame bakar baten
##
## Author: Juan
##
## Date Created: 2019-08-30
##
## Email: juan.abasolo@ehu.eus
##
## ---------------------------
##
## Notes: 
##  
##
## ---------------------------

## require() ---------------------------

require(XML)
require(RCurl)
require(rlist)
require(stringr)

## URLak leitzeko funtzinua ---------------------------
##   hartuEuskaltzaindiatik
##   funtzino honek bialtzen dau data/raw/ehhakoa karpetara (eginda egon bihar dau aurretik)
##   'hartzekoak' izeneko data frame bat behar dau, hor zutabe batean URLak egon behar dabe

hartuEuskaltzaindiatik <- function(urlak){
  for(i in urlak){
    # Leidu datuak
    # Mapa identifikau zenbakiz
    x2 <- regexpr(i, pattern = 'mapa=')
    x3 <- substr(i, start = x2+5, stop = x2+8)
    x3 <- as.numeric(x3)

    ID <- paste('ehha.mapa.', x3, sep = '')
    print(ID)
    url.bakotxa <- getURL(i,.opts = list(ssl.verifypeer = FALSE))

    # URL horretako taula guztiak
    taulak <- readHTMLTable(url.bakotxa)

    # Tauletako informazino ez konpatibleak ezabatu (Rrako konpatible ez direanak)
    taulak <- list.clean(taulak, fun = is.null, recursive = FALSE)

    # Identifikatu taula bakotxan tamaina
    n.rows <- unlist(lapply(taulak, function(t) dim(t)[1]))

    # Aukeratu orriko taula guztietan handiena
    taula <- taulak[[which.max(n.rows)]]

    ## Euskaltzaindiako taula hartuta
    
    # Garbitu Euskaltzaindiako taula

    # Txarto geratu dana konpondu
    garbitzeko <- taula[, 4]

    # fon baliaok kortxeen artean daukozanez,
    # zabaltzeko unetik zarratzekora baino ez da geratu bihar.
    # Zabaltzeko unea identifikau
    a <- regexpr(pattern = '\\[', garbitzeko)
    # str(a)
    attributes(a) <- NULL
    # a

    # Zarratzeko unia identifikau
    b <- regexpr(pattern = ']', garbitzeko)
    attributes(b) <- NULL

    # Bijen bitarteku baino ez gorde
    c <- substr(garbitzeko, a+1, b-1)

    # Sartu taulara
    taula[, 4] <- c

    # Sobrako zutabi be kendu
    taula <- taula [ ,1:4]

    rbind(head(taula), tail(taula))
    assign(ID, taula)
    # Gorde taula data/processed carpetan
    write.csv(taula, paste('data/raw/ehhakoa/',ID, '.csv', sep = ''))


  }

  # rm(a, b, c, garbitzeko, i, ID, taulak, taula, n.rows, url.bakotxa, urlak)
}


## --------------------------
## URLak leitzeko data framea leidu/sortu

hartzekoak <- read.csv('data/sources/URLak.csv', stringsAsFactors = FALSE)

## Sortu csv fitxategiak---------------------------
## 
hartuEuskaltzaindiatik(hartzekoak[,'URL'])


## Data Frame batera danak ---------------------------
##

df.ehha.senidetasunata <- data.frame(Herria = character(),
                      Lema = character(),
                      Erantzuna = character(),
                      Erantzuna..fon. = character(),
                      galdera = character()
)

xehha <- list.files('data/raw/ehhakoa', pattern = "ehha.mapa")

for(i in xehha){
  barria <- read.csv(paste0('data/raw/ehhakoa/', i), stringsAsFactors = FALSE)[,2:5]
  barria$galdera <- c(rep(substr(i, start = 11, stop = 14), nrow(barria)))
  df.ehha.senidetasunata <- rbind(df.ehha.senidetasunata, barria)
}

rm(barria, i)


## Kendu azentu grafikoak lemak zutabean ---------------
##
df.ehha.senidetasunata$Lema <- iconv(iconv(df.ehha.senidetasunata$Lema, to='ASCII//TRANSLIT'), to ='UTF-8')

##  Idatzi csv ehhako datuakin ---------------------------
##

write.csv(df.nagusiak, file = 'data/processed/df-ehha-senidetasuna-ta.csv')
