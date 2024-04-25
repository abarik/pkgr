# Publikációkész grafika R-ben

Ez a jegyzet bemutatja, hogyan készíthetünk különböző típusú ábrákat a `{ggplot2}` R csomag segítségével. A következő ábrák létrehozására adunk receptet:

- hisztogram
- oszlopdiagram
- dobozdiagram
- pontdiagram
- átlagábra.

A jegyzet a következő linken érhető el: <https://abarik.github.io/pkgr/>

## Telepítés

A jegyzetben található R kódok kipróbálásához néhány előkészítő lépés szükséges:

- R telepítése: <https://cran.r-project.org/>
- RStudio Desktop telepítése: <https://posit.co/download/rstudio-desktop/>
- R csomagok telepítése:

```r
# szükséges csomagok telepítése R-ben
install.packages("ggplot2")
install.packages("tidyverse")
install.packages("rio")
install.packages("ggh4x")
install.packages("jmv")
install.packages("GGally")
```

- érdemes RStudio projektet létrehozni az R parancsok kipróbáláshoz
  - hozzunk létre egy `adat` nevű könyvtárat a projektkönyvtárban, majd futtassuk
 
```r
# adatállomány létrehozása
rio::export(MASS::survey, "adat/survey.xlsx")
```

## Használat

A jegyzet célja, hogy a `{ggplot2}` által biztosított eszközökkel a lehető legegyszerűbben illusztrálhassuk saját tudományos írásunkat. A bemutatott R-parancsokat úgy készítettük elő, hogy minimális változtatással alkalmas legyen a saját adataink alapján esztétikus ábra létrehozására.

## Szerző

Abari Kálmán (<abari.kalman@arts.unideb.hu>)


## Bemutató

A jegyzetben a következő ábrák létrehozására találunk kész receptet:

<figure>
    <img src="output/kep/hisztogram_01.png" 
         width="400" 
         >
    <figcaption>Hisztogram egy csoportra
    </figcaption>
</figure>

----

<figure>
    <img src="output/kep/hisztogram_02.png" 
         width="400" 
         >
    <figcaption>Simított isztogram egy csoportra
    </figcaption>
</figure>


<figure>
    <img src="output/kep/hisztogram_03.png" 
         width="400" 
         >
    <figcaption>Hisztogram és simított hisztogram
    </figcaption>
</figure>
