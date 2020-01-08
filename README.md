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

Lehenengo pausuan ez dogu erabiliko RStudio, R online konpilatzeko aukerea eskaintzen daben web orrietan edo R Gui hutsa erabilita trebatuko gara; webean izan behar badu: [lehenen honetan](https://rdrr.io/snippets/), eta gero hurrengoetan [*](https://www.tutorialspoint.com/execute_r_online.php), [** ](https://rextester.com/l/r_online_compiler) ... Ahalik eta erarik gordinean aztertu ahal izateko; azterketa horretatik oinarrizko ezaugarri eta elementuak identifikatzeko gai izan behar geunke.


### Trebatzeko.

Zati bakoitza aztertu behar dozu R kontsolan. Bakoitzak zer bueltatzen duen aztertu behar dogu eta ulertzen ahalegindu

#### Aritmetikatik hasi

```
## 

3

```
Zuk `3` esan deutsazuenan, Rk zer esan dotsu?

```
##

3+2+3+4

```

Eta `3+2+3+4` esanda zer esan dau?

Aztertu deikegu oinarrizko aritmetikan gehitxuago ere:

+ Gehiketa +
+ Kenketa -
+ Biderketa *
+ Zatiketa /
+ Zatiketa integrala (?) %%
+ Berreketa ^2, edo dana dalako zenbakia


#### Aldagaiak

Hurrengoak banan banan sartu eta aztertuko doguz

```
## Pizza zatiak

nagusia <- 3
nagusia
txikia <- 2
txikia
ama <- 3
ama
aita <- 4
aita

danok.sum <- nagusia+txikia+ama+aita
danok.sum
```

Objektuak sortu doguz, aldagaiak (`variable`). Operazinoik be egin doguz eurok erabilita.

Segidan, beste era bateko objektua sortuko dogu, bektorea `vector()`

```
##
danok.vector <- c(nagusia, txikia, ama, aita)
danok.vector
```

Bektoreak eragiketak egiteko be erabil deikeguz:

```
##

pizza <- 6

danok.sum/pizza

danok.vector/pizza

```

#### Funtzinoak

```
## Batez bestekoa kalkulatu 'gordinik'

danok.sum/4

danok.vector


sum(danok.vector)
length(danok.vector)

sum(danok.vector)/length(danok.vector)
```

Batez bestekoa kalkulatzeko funtzino bat sortu behar dogula pentsauta, hona bidea.

```
## Gure funtzino bat

f.batezbeste <- function(zenbakizko.bektorea)sum(zenbakizko.bektorea)/length(zenbakizko.bektorea)

f.batezbeste(danok.vector)
```
Goian ikusten da zelan sortzen dan oso funtzino sinplea; baina prozesu bat baino gehiago edota kalkulu handiagoak behar diranean (kasu gehienetan), beste notazino bat erabilten da.

```
## Gure lehengo funtzinoa, beste era batera idatzita

f.batezbeste <- function(x){
  sum(x)/length(x)
  }
```


**Ariketatxu bat**:
Sortu bektore bat etxeko guztien edadeakin. Gero erabili etxeko edadeen bataz bestekoa aterateko


Funtzinoak milaka dagoz, hemen batzuk aurkeztu eta aztertuko doguz.

```
sum(danok.vector)
length(danok.vector)
max(danok.vector)
min(danok.vector)
quantile(danok.vector)
sd(danok.vector)
summary(danok.vector)
ls()
getwd()
```

Gure lehengo funtzino hori hazi arazo ahal dogu goiko batzuk hartuta, bataz besteko moteldu bat lortzeko, hau da, muturreko balioak kenduta:

```
## Bigarren funtzioa. Batez bestekoa, baina minimoa eta maximoa kenduta

f.batezbesteko.inausia <- function(x){
  (sum(x) -max(x) -min(x))/(length(x)-2)
}
```

Funzinoren bat zer dan ez dakigunerako ezagutu beharreko funtzino garrantzitsua: `help("jakin.nahi.dodana")`. Kakotx horiek danean ikusi dot behar direala, baina nire R bertsinoian ez dau derrigorrez behar.

Laguntza lortzeko funtzinoa beste era batzutara be deitu daiteke. Geroko hori be.


#### Elementu motak

Hurrengo komandoek banaka erabili eta aztertuko doguz

```
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
```

Igarriko zenduanez, horko objektu guztiak laukoak dira (`[1:4]` agertzen da `str()` funtzinoaz). Ba, horreen alkarketa bat egingo dogu gure etxeko Gabonetako apariko informazino guztiagaz. 

**Data frame**a

```
df.gabonak <- data.frame(olentzerori,
                         olentzerok,
                         zenbat.pizza,
                         zenbat.turroi,
                         row.names = nortzuk
                         )
df.gabonak

str(df.gabonak)
summary(df.gabonak)
plot(df.gabonak$zenbat.pizza, zenbat.turroi)
```

**_Data frame_**a normalean *datu matriza* esaten deutsaguna da. R-n `matrix` elementu jakin bat danez, ingeleseko forma erabilten da euskeraz, gaztelaniaz, frantsesez eta italianoz. 


#### Indexazinoa

Elementu asko daukazan bektore, matriz, data frame edo dana dalakoan elementu jakinak banaka eskatu leiz. Esate baterako, `nortzuk` izeneko elementu bat daukogu, horrek lau elementu daukaz danera, ba, hona azterketatxu bat

```
nortzuk

nortzuk[1]

nortzuk[2]

nortzuk[2:4]

nortzuk[c(1,4)]

```

`nortzuk` bektoreko elementuak berbak dira, baina bardin bardin egin geinke zenbakizkoakin.

```
zenbat.pizza

zenbat.pizza[c(1,4)]

zenbat.pizza[c(TRUE, FALSE, FALSE, TRUE)]
```

Azken agindu biakin emoitza bakarra lortzen da. Emoitzak alderatu deikeguz gure begiz edo Rri eskatu leio berak ebaluateko:

```
zenbat.pizza[c(1,4)] == zenbat.pizza[c(TRUE, FALSE, FALSE, TRUE)]

```

Baina beste era batera indexatu behar dogu dimentsino gehiagoko elemtuetan. `df.gabonak` data framean kuxkuxero ibiliko gara holan:

```
## Kuxkuxero

df.gabonak[, 'zenbat.turroi']
df.gabonak$zenbat.turroi
df.gabonak[, 4]
df.gabonak[ , c(FALSE, FALSE, FALSE, TRUE)]

df.gabonak["aita",]
df.gabonak[4,]
df.gabonak[c(FALSE, FALSE, FALSE, TRUE), ]
```

Koma hori non dagoan, era bateko edo beste bateko elementuak edo elementu motak bueltaten doskuz. Eta nahastu leiz index biak, jakina:

```
df.gabonak[c(FALSE, TRUE, FALSE, TRUE), c(FALSE, TRUE, FALSE, TRUE)]
```


Eta apurtxu bat gehixeago olgau ahal dogu. Ea turroi gitxi zematek jan dauan

```
df.gabonak$zenbat.turroi == 'gitxi'

sum(df.gabonak$zenbat.turroi == 'gitxi')

```

Eta gitxi jan dauanak... Olentzerori idatzi deutso? Oparirik jaso dau? Zemat pizza jan dau?

```
df.gabonak[df.gabonak$zenbat.turroi == 'gitxi', 1:3]
```

**Ariketatxua**: Galdetu nortzuk hartu daben oparia



## Ariketa

Erabili papela eta boligrafoa.

### Hasikera

Orain zuk sortu behar dozu jairen baten ganeko data frame bat mahai inguruko datuekin; gitxienez, holako mota bana daukala:

* Zenbakizko bektorea
* Bektore logikoa
* Bektore kategorikoa
* Bektore ordinala

Dokumentatu pausuak eta arazoak.

### Hurrengo pausuak

1. `summary(zure.data.frame)` funtzinoaren urteran oinarrituta, aztertu muturreko balioak
2. Sortu beste aldagai bat zure data framean `zure.data.frame$aldagai.berria <- datuak` teknika erabilita

Beste modu posible bat hau litzateke:

```r
zure.data.frame[ , 'aldagai.berria'] <- datuak
```

3. Ea sortu ahal duzun `zure.data.frame["lerro.berria", ]`


## Bibliografia

Mendoza Vega, J. B. (2018). R para principiantes. Bosco Mendoza. https://rprincipiantes.boscomendoza.com/

Paradis, E. (2005). R for beginners[^1]. E. Paradis. http://cran.r-project.org/doc/contrib/Paradis-rdebuts_en.pdf

[^1]: Erderaz be itzulita dago
