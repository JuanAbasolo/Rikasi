## Datu orokorrak ---------------
##
## Script name: Arianen datuk sartu
##
## Purpose of script: Arianen datuk exceleko artxibo batetik sartu
##
## Author: Juan
##
## Date Created: 2020-01-17
##
## Email: juan.abasolo@ehu.eus
##
## Oharrak -----------------------
## Datuak sartu
## Datuak berrantolatu
##   
##
## Libreriak ---------------------

## load up the packages we will need:  (uncomment as required)
## parekoa require()
library(gdata)


# source('')       # loads up all the packages we need

## Funtzioak ------------------------

## load up our functions into memory

# source("functions/summarise_data.R") 

## Datuak ----------------------------


df.ariane <- read.xls('data/Rbusturialdeko datubase.xlsx')


head(df.ariane)
tail(df.ariane)
length(levels(df.ariane$Ezaugarria))
str(df.ariane)
summary(df.ariane)

## Zuzendu mailak $Adina aldagaian
kentzekoa <- levels(df.ariane$Adina)[3]


## Maila batzuk desgertu jakuz... etxakuz desagertu!!!
df.ariane[370:380, ]
mailak.juanenin <- levels(df.ariane$Emaitza)
dput(mailak.juanenin)

mailak.arianenin <- c("-a (kanta, gusta...)", "-au (kantau, gustau...)", "-e (kante, guste...)", 
                      "-eu (kanteu, gusteu...)", "-i", "-ie", "-ind bustidura", "-ind bustidura gabe", 
                      "-it, badakit", "-kaz", "-kin", "-oa", "-taten (kantaten, gustaten...)", 
                      "-tetan (kantetan, gustetan...)", "-teten (kanteten, gusteten)", 
                      "-u", "-ue", "[_]", "[_] _at, _ako, _atzu...", "[\xbf] ate, ako, atzu...", 
                      "[c] aittitte, bisittetan...", "[d__] d__at, d__ako, d__atzu...", 
                      "[d__] d__osi, d__an, d__oan...", "[d] date, dako, datzu...", 
                      "[j] jat, jako, jatzu...", "[s_]", "[t_ _] aitxitxe, bisitxetan...", 
                      "[x] josi, jan, joan...", "a>a/ i, u___", "a>e/ i, u___", "aitsitse, bisitsetan...", 
                      "aitzitze, bisitzetan...", "au diptongoa", "bestelakoa (doten, ditxues...)", 
                      "bestelakosoinua _osi, _an, _oan...", "bestelakosoinua deusi, dantzi...", 
                      "bi + I (bi liburu)", "dabe, naben, (e)ban", "dau", "deu", "deue, neuen, euen", 
                      "doa", "doie", "due", "erak + I (hau gizona)", "eu diptongoa", 
                      "I + bi (liburu bi)", "I + erak (gizon hau)", "loi/ ziki\x96", 
                      "loixe/ ziki\x96e")

is.element(mailak.juanenin, mailak.arianenin)
mailak.juanenin[!is.element(mailak.juanenin, mailak.arianenin)]
