# Rn ikasteko mintegiko zenbait elementu hemen

Baldintzak:

+ R instalauta
+ RStudio instalauta
+ Estatistikako jakinduria eskura (apunteak izan daitekez, jakina)

# Aurrekoak

Ikastaroa ez leuke izan beharko honek; baina, halan eta guztiz be, ikasi beharreko kontu batzuk identifikatu beharra dago eta hurrenkera bat emon beharko jako, ikaskuntza errazteko.

Zeozenbat ordutan ekin eta gero, neuk uste dot:

+ danok datuak sartzeko bideren bat ezagutuko dogula
+ gure datuen araberako analisia egiten jakingo dogula
+ beste datu batzuakin edo/eta beste analisi batzuakin behar egiteko moduak ikertzen asmauko dogula

Horretarako, oinarrizko pare bat helburutara aileagaten ahalegindu behar dogu:

+ Rko sintaxia, funtzioen ezaugarriak eta elementuenak ezagutzea eta identifikatzea
+ RStudio interface aurreratuko oinarrizko hainbat erabilera

---

## Objektuak eta funtzioak

+ Oinarrizko operazio aritmetikoak `1+1`... `3%%2`
+ Aldagaiak sortu eta erabili `variable <- value`  
  Hasiera
+ Bektoreak sortu eta erabili `vector(x, mode = c('logical', ...))`  
  Bektore motak.
+ Data Frameak eta matrizak `data.frame()` eta `matrix()`
+ Bestelako objektuak: zerrendak `list()`
+ Funtzioak  
  Funtzioa sortu
+ Datuen azterketa  
  Objektuetako elementuak *berreskuratzea*
  Objektuaren ezaugarrien laburpena 

## Aztertu

Rn ditugun objektuak aztertzen jakin  behar da, euren egitura zelakoa dan eragiketa batzuk edo beste batzuk egin ahal izango doguzalako.

+ Objektuaren egitura `str()`
+ Objektu mota zein dan aztertu `class()`
+ Objektuen atributuak `attributes()`

## Derrigortu

Era bateko objektuei eragin ahal jake beste era batekoak izatea, hobeto lantzeko.

+ `unclass()`, `unname()`... 
+  `as.factor()`, `as.data.frame()`...

---

## Balio bereziak 
c(-1, 0, 1) / 2

c(-1, 0, 1) / 0



## Bibliografiea-ta

Cruz, J., & Moreno, D. (2017). *Nebulae-co/saber* [R]. nebulae-co. https://github.com/nebulae-co/saber (Original work published 2015)

Mendoza Vega, J. B. (2018). *R para principiantes*. Bosco Mendoza. https://rprincipiantes.boscomendoza.com/

Paradis, E. (2005). *R for beginners*. E. Paradis. http://cran.r-project.org/doc/contrib/Paradis-rdebuts_en.pdf

R Core Team. (2018). *R: A Language and Environment for Statistical Computing*. R Foundation for Statistical Computing. https://www.R-project.org/

RStudio Team. (2019). *RStudio: Integrated Development Environment for R*. RStudio, Inc. http://www.rstudio.com/

