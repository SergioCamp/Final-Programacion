Resumen.Final
================
Campos Torres Sergio Junior
31/1/2022

**Librerias a utilizar**

``` r
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.1 --

    ## v ggplot2 3.3.5     v purrr   0.3.4
    ## v tibble  3.1.6     v dplyr   1.0.7
    ## v tidyr   1.1.4     v stringr 1.4.0
    ## v readr   2.1.0     v forcats 0.5.1

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

**Data a utilizar**

``` r
data("starwars")
```

*Estas son algunas de las funciones que se pueden usar con la libreria
Dplyr*

``` r
#Filter (data, lo que quieres filtrar)

filter(starwars, species == "Droid")
```

    ## # A tibble: 6 x 14
    ##   name   height  mass hair_color skin_color  eye_color birth_year sex   gender  
    ##   <chr>   <int> <dbl> <chr>      <chr>       <chr>          <dbl> <chr> <chr>   
    ## 1 C-3PO     167    75 <NA>       gold        yellow           112 none  masculi~
    ## 2 R2-D2      96    32 <NA>       white, blue red               33 none  masculi~
    ## 3 R5-D4      97    32 <NA>       white, red  red               NA none  masculi~
    ## 4 IG-88     200   140 none       metal       red               15 none  masculi~
    ## 5 R4-P17     96    NA none       silver, red red, blue         NA none  feminine
    ## 6 BB8        NA    NA none       none        black             NA none  masculi~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
filter(starwars, species == "Droid", eye_color == "red", skin_color == "metal")
```

    ## # A tibble: 1 x 14
    ##   name  height  mass hair_color skin_color eye_color birth_year sex   gender   
    ##   <chr>  <int> <dbl> <chr>      <chr>      <chr>          <dbl> <chr> <chr>    
    ## 1 IG-88    200   140 none       metal      red               15 none  masculine
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
filter(starwars, height >= 202)
```

    ## # A tibble: 10 x 14
    ##    name    height  mass hair_color skin_color  eye_color birth_year sex   gender
    ##    <chr>    <int> <dbl> <chr>      <chr>       <chr>          <dbl> <chr> <chr> 
    ##  1 Darth ~    202   136 none       white       yellow          41.9 male  mascu~
    ##  2 Chewba~    228   112 brown      unknown     blue           200   male  mascu~
    ##  3 Roos T~    224    82 none       grey        orange          NA   male  mascu~
    ##  4 Rugor ~    206    NA none       green       orange          NA   male  mascu~
    ##  5 Yarael~    264    NA none       white       yellow          NA   male  mascu~
    ##  6 Lama Su    229    88 none       grey        black           NA   male  mascu~
    ##  7 Taun We    213    NA none       grey        black           NA   fema~ femin~
    ##  8 Grievo~    216   159 none       brown, whi~ green, y~       NA   male  mascu~
    ##  9 Tarfful    234   136 brown      brown       blue            NA   male  mascu~
    ## 10 Tion M~    206    80 none       grey        black           NA   male  mascu~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
##Usando %>% , tambien funciona como un + (sumar funciones)

"funcion(data,x) es lo mismo que: 
data %>% funcion(x)"
```

    ## [1] "funcion(data,x) es lo mismo que: \ndata %>% funcion(x)"

``` r
filter(starwars, species == "Droid")
```

    ## # A tibble: 6 x 14
    ##   name   height  mass hair_color skin_color  eye_color birth_year sex   gender  
    ##   <chr>   <int> <dbl> <chr>      <chr>       <chr>          <dbl> <chr> <chr>   
    ## 1 C-3PO     167    75 <NA>       gold        yellow           112 none  masculi~
    ## 2 R2-D2      96    32 <NA>       white, blue red               33 none  masculi~
    ## 3 R5-D4      97    32 <NA>       white, red  red               NA none  masculi~
    ## 4 IG-88     200   140 none       metal       red               15 none  masculi~
    ## 5 R4-P17     96    NA none       silver, red red, blue         NA none  feminine
    ## 6 BB8        NA    NA none       none        black             NA none  masculi~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
starwars %>% 
  filter(species == "Droid")
```

    ## # A tibble: 6 x 14
    ##   name   height  mass hair_color skin_color  eye_color birth_year sex   gender  
    ##   <chr>   <int> <dbl> <chr>      <chr>       <chr>          <dbl> <chr> <chr>   
    ## 1 C-3PO     167    75 <NA>       gold        yellow           112 none  masculi~
    ## 2 R2-D2      96    32 <NA>       white, blue red               33 none  masculi~
    ## 3 R5-D4      97    32 <NA>       white, red  red               NA none  masculi~
    ## 4 IG-88     200   140 none       metal       red               15 none  masculi~
    ## 5 R4-P17     96    NA none       silver, red red, blue         NA none  feminine
    ## 6 BB8        NA    NA none       none        black             NA none  masculi~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
#Select (data, lo que quieres seleccionar de tu data)

starwars %>% 
  select(name)
```

    ## # A tibble: 87 x 1
    ##    name              
    ##    <chr>             
    ##  1 Luke Skywalker    
    ##  2 C-3PO             
    ##  3 R2-D2             
    ##  4 Darth Vader       
    ##  5 Leia Organa       
    ##  6 Owen Lars         
    ##  7 Beru Whitesun lars
    ##  8 R5-D4             
    ##  9 Biggs Darklighter 
    ## 10 Obi-Wan Kenobi    
    ## # ... with 77 more rows

``` r
starwars %>% 
  select(name, height)
```

    ## # A tibble: 87 x 2
    ##    name               height
    ##    <chr>               <int>
    ##  1 Luke Skywalker        172
    ##  2 C-3PO                 167
    ##  3 R2-D2                  96
    ##  4 Darth Vader           202
    ##  5 Leia Organa           150
    ##  6 Owen Lars             178
    ##  7 Beru Whitesun lars    165
    ##  8 R5-D4                  97
    ##  9 Biggs Darklighter     183
    ## 10 Obi-Wan Kenobi        182
    ## # ... with 77 more rows

``` r
starwars %>% 
  select(name, height, ends_with("color"))
```

    ## # A tibble: 87 x 5
    ##    name               height hair_color    skin_color  eye_color
    ##    <chr>               <int> <chr>         <chr>       <chr>    
    ##  1 Luke Skywalker        172 blond         fair        blue     
    ##  2 C-3PO                 167 <NA>          gold        yellow   
    ##  3 R2-D2                  96 <NA>          white, blue red      
    ##  4 Darth Vader           202 none          white       yellow   
    ##  5 Leia Organa           150 brown         light       brown    
    ##  6 Owen Lars             178 brown, grey   light       blue     
    ##  7 Beru Whitesun lars    165 brown         light       blue     
    ##  8 R5-D4                  97 <NA>          white, red  red      
    ##  9 Biggs Darklighter     183 black         light       brown    
    ## 10 Obi-Wan Kenobi        182 auburn, white fair        blue-gray
    ## # ... with 77 more rows

``` r
starwars %>% 
  select(starts_with("eye"))
```

    ## # A tibble: 87 x 1
    ##    eye_color
    ##    <chr>    
    ##  1 blue     
    ##  2 yellow   
    ##  3 red      
    ##  4 yellow   
    ##  5 brown    
    ##  6 blue     
    ##  7 blue     
    ##  8 red      
    ##  9 brown    
    ## 10 blue-gray
    ## # ... with 77 more rows

``` r
starwars %>% 
  select(-(starts_with("eye")), -(name))
```

    ## # A tibble: 87 x 12
    ##    height  mass hair_color  skin_color birth_year sex   gender homeworld species
    ##     <int> <dbl> <chr>       <chr>           <dbl> <chr> <chr>  <chr>     <chr>  
    ##  1    172    77 blond       fair             19   male  mascu~ Tatooine  Human  
    ##  2    167    75 <NA>        gold            112   none  mascu~ Tatooine  Droid  
    ##  3     96    32 <NA>        white, bl~       33   none  mascu~ Naboo     Droid  
    ##  4    202   136 none        white            41.9 male  mascu~ Tatooine  Human  
    ##  5    150    49 brown       light            19   fema~ femin~ Alderaan  Human  
    ##  6    178   120 brown, grey light            52   male  mascu~ Tatooine  Human  
    ##  7    165    75 brown       light            47   fema~ femin~ Tatooine  Human  
    ##  8     97    32 <NA>        white, red       NA   none  mascu~ Tatooine  Droid  
    ##  9    183    84 black       light            24   male  mascu~ Tatooine  Human  
    ## 10    182    77 auburn, wh~ fair             57   male  mascu~ Stewjon   Human  
    ## # ... with 77 more rows, and 3 more variables: films <list>, vehicles <list>,
    ## #   starships <list>

``` r
starwars %>% 
  select(contains("_"))
```

    ## # A tibble: 87 x 4
    ##    hair_color    skin_color  eye_color birth_year
    ##    <chr>         <chr>       <chr>          <dbl>
    ##  1 blond         fair        blue            19  
    ##  2 <NA>          gold        yellow         112  
    ##  3 <NA>          white, blue red             33  
    ##  4 none          white       yellow          41.9
    ##  5 brown         light       brown           19  
    ##  6 brown, grey   light       blue            52  
    ##  7 brown         light       blue            47  
    ##  8 <NA>          white, red  red             NA  
    ##  9 black         light       brown           24  
    ## 10 auburn, white fair        blue-gray       57  
    ## # ... with 77 more rows

``` r
#Rename (Renombrar columnas)

starwars %>% 
  select(name, height) %>% rename(nombre=name, peso=height)
```

    ## # A tibble: 87 x 2
    ##    nombre              peso
    ##    <chr>              <int>
    ##  1 Luke Skywalker       172
    ##  2 C-3PO                167
    ##  3 R2-D2                 96
    ##  4 Darth Vader          202
    ##  5 Leia Organa          150
    ##  6 Owen Lars            178
    ##  7 Beru Whitesun lars   165
    ##  8 R5-D4                 97
    ##  9 Biggs Darklighter    183
    ## 10 Obi-Wan Kenobi       182
    ## # ... with 77 more rows

``` r
#Relocate (Mover solo las columnas)

starwars %>% relocate(height)
```

    ## # A tibble: 87 x 14
    ##    height name     mass hair_color  skin_color eye_color birth_year sex   gender
    ##     <int> <chr>   <dbl> <chr>       <chr>      <chr>          <dbl> <chr> <chr> 
    ##  1    172 Luke S~    77 blond       fair       blue            19   male  mascu~
    ##  2    167 C-3PO      75 <NA>        gold       yellow         112   none  mascu~
    ##  3     96 R2-D2      32 <NA>        white, bl~ red             33   none  mascu~
    ##  4    202 Darth ~   136 none        white      yellow          41.9 male  mascu~
    ##  5    150 Leia O~    49 brown       light      brown           19   fema~ femin~
    ##  6    178 Owen L~   120 brown, grey light      blue            52   male  mascu~
    ##  7    165 Beru W~    75 brown       light      blue            47   fema~ femin~
    ##  8     97 R5-D4      32 <NA>        white, red red             NA   none  mascu~
    ##  9    183 Biggs ~    84 black       light      brown           24   male  mascu~
    ## 10    182 Obi-Wa~    77 auburn, wh~ fair       blue-gray       57   male  mascu~
    ## # ... with 77 more rows, and 5 more variables: homeworld <chr>, species <chr>,
    ## #   films <list>, vehicles <list>, starships <list>

``` r
starwars %>% relocate(height, .after=mass)
```

    ## # A tibble: 87 x 14
    ##    name     mass height hair_color  skin_color eye_color birth_year sex   gender
    ##    <chr>   <dbl>  <int> <chr>       <chr>      <chr>          <dbl> <chr> <chr> 
    ##  1 Luke S~    77    172 blond       fair       blue            19   male  mascu~
    ##  2 C-3PO      75    167 <NA>        gold       yellow         112   none  mascu~
    ##  3 R2-D2      32     96 <NA>        white, bl~ red             33   none  mascu~
    ##  4 Darth ~   136    202 none        white      yellow          41.9 male  mascu~
    ##  5 Leia O~    49    150 brown       light      brown           19   fema~ femin~
    ##  6 Owen L~   120    178 brown, grey light      blue            52   male  mascu~
    ##  7 Beru W~    75    165 brown       light      blue            47   fema~ femin~
    ##  8 R5-D4      32     97 <NA>        white, red red             NA   none  mascu~
    ##  9 Biggs ~    84    183 black       light      brown           24   male  mascu~
    ## 10 Obi-Wa~    77    182 auburn, wh~ fair       blue-gray       57   male  mascu~
    ## # ... with 77 more rows, and 5 more variables: homeworld <chr>, species <chr>,
    ## #   films <list>, vehicles <list>, starships <list>

``` r
starwars %>% relocate(height, .before=mass)
```

    ## # A tibble: 87 x 14
    ##    name    height  mass hair_color  skin_color eye_color birth_year sex   gender
    ##    <chr>    <int> <dbl> <chr>       <chr>      <chr>          <dbl> <chr> <chr> 
    ##  1 Luke S~    172    77 blond       fair       blue            19   male  mascu~
    ##  2 C-3PO      167    75 <NA>        gold       yellow         112   none  mascu~
    ##  3 R2-D2       96    32 <NA>        white, bl~ red             33   none  mascu~
    ##  4 Darth ~    202   136 none        white      yellow          41.9 male  mascu~
    ##  5 Leia O~    150    49 brown       light      brown           19   fema~ femin~
    ##  6 Owen L~    178   120 brown, grey light      blue            52   male  mascu~
    ##  7 Beru W~    165    75 brown       light      blue            47   fema~ femin~
    ##  8 R5-D4       97    32 <NA>        white, red red             NA   none  mascu~
    ##  9 Biggs ~    183    84 black       light      brown           24   male  mascu~
    ## 10 Obi-Wa~    182    77 auburn, wh~ fair       blue-gray       57   male  mascu~
    ## # ... with 77 more rows, and 5 more variables: homeworld <chr>, species <chr>,
    ## #   films <list>, vehicles <list>, starships <list>

``` r
starwars %>% relocate(sex, height, .before=mass)
```

    ## # A tibble: 87 x 14
    ##    name    sex    height  mass hair_color skin_color eye_color birth_year gender
    ##    <chr>   <chr>   <int> <dbl> <chr>      <chr>      <chr>          <dbl> <chr> 
    ##  1 Luke S~ male      172    77 blond      fair       blue            19   mascu~
    ##  2 C-3PO   none      167    75 <NA>       gold       yellow         112   mascu~
    ##  3 R2-D2   none       96    32 <NA>       white, bl~ red             33   mascu~
    ##  4 Darth ~ male      202   136 none       white      yellow          41.9 mascu~
    ##  5 Leia O~ female    150    49 brown      light      brown           19   femin~
    ##  6 Owen L~ male      178   120 brown, gr~ light      blue            52   mascu~
    ##  7 Beru W~ female    165    75 brown      light      blue            47   femin~
    ##  8 R5-D4   none       97    32 <NA>       white, red red             NA   mascu~
    ##  9 Biggs ~ male      183    84 black      light      brown           24   mascu~
    ## 10 Obi-Wa~ male      182    77 auburn, w~ fair       blue-gray       57   mascu~
    ## # ... with 77 more rows, and 5 more variables: homeworld <chr>, species <chr>,
    ## #   films <list>, vehicles <list>, starships <list>

``` r
#Arrange (Ordenar columnas)
#Los N.a. siempre van al final"

starwars %>% 
  arrange(height)
```

    ## # A tibble: 87 x 14
    ##    name     height  mass hair_color skin_color eye_color birth_year sex   gender
    ##    <chr>     <int> <dbl> <chr>      <chr>      <chr>          <dbl> <chr> <chr> 
    ##  1 Yoda         66    17 white      green      brown            896 male  mascu~
    ##  2 Ratts T~     79    15 none       grey, blue unknown           NA male  mascu~
    ##  3 Wicket ~     88    20 brown      brown      brown              8 male  mascu~
    ##  4 Dud Bolt     94    45 none       blue, grey yellow            NA male  mascu~
    ##  5 R2-D2        96    32 <NA>       white, bl~ red               33 none  mascu~
    ##  6 R4-P17       96    NA none       silver, r~ red, blue         NA none  femin~
    ##  7 R5-D4        97    32 <NA>       white, red red               NA none  mascu~
    ##  8 Sebulba     112    40 none       grey, red  orange            NA male  mascu~
    ##  9 Gasgano     122    NA none       white, bl~ black             NA male  mascu~
    ## 10 Watto       137    NA black      blue, grey yellow            NA male  mascu~
    ## # ... with 77 more rows, and 5 more variables: homeworld <chr>, species <chr>,
    ## #   films <list>, vehicles <list>, starships <list>

``` r
starwars %>% 
  arrange(desc(height))
```

    ## # A tibble: 87 x 14
    ##    name    height  mass hair_color skin_color  eye_color birth_year sex   gender
    ##    <chr>    <int> <dbl> <chr>      <chr>       <chr>          <dbl> <chr> <chr> 
    ##  1 Yarael~    264    NA none       white       yellow          NA   male  mascu~
    ##  2 Tarfful    234   136 brown      brown       blue            NA   male  mascu~
    ##  3 Lama Su    229    88 none       grey        black           NA   male  mascu~
    ##  4 Chewba~    228   112 brown      unknown     blue           200   male  mascu~
    ##  5 Roos T~    224    82 none       grey        orange          NA   male  mascu~
    ##  6 Grievo~    216   159 none       brown, whi~ green, y~       NA   male  mascu~
    ##  7 Taun We    213    NA none       grey        black           NA   fema~ femin~
    ##  8 Rugor ~    206    NA none       green       orange          NA   male  mascu~
    ##  9 Tion M~    206    80 none       grey        black           NA   male  mascu~
    ## 10 Darth ~    202   136 none       white       yellow          41.9 male  mascu~
    ## # ... with 77 more rows, and 5 more variables: homeworld <chr>, species <chr>,
    ## #   films <list>, vehicles <list>, starships <list>

``` r
#Add row (agregar una fila)

starwars %>% 
  add_row(name="Sergio", mass=52, height=60, .before=5)
```

    ## # A tibble: 88 x 14
    ##    name     height  mass hair_color skin_color eye_color birth_year sex   gender
    ##    <chr>     <dbl> <dbl> <chr>      <chr>      <chr>          <dbl> <chr> <chr> 
    ##  1 Luke Sk~    172    77 blond      fair       blue            19   male  mascu~
    ##  2 C-3PO       167    75 <NA>       gold       yellow         112   none  mascu~
    ##  3 R2-D2        96    32 <NA>       white, bl~ red             33   none  mascu~
    ##  4 Darth V~    202   136 none       white      yellow          41.9 male  mascu~
    ##  5 Sergio       60    52 <NA>       <NA>       <NA>            NA   <NA>  <NA>  
    ##  6 Leia Or~    150    49 brown      light      brown           19   fema~ femin~
    ##  7 Owen La~    178   120 brown, gr~ light      blue            52   male  mascu~
    ##  8 Beru Wh~    165    75 brown      light      blue            47   fema~ femin~
    ##  9 R5-D4        97    32 <NA>       white, red red             NA   none  mascu~
    ## 10 Biggs D~    183    84 black      light      brown           24   male  mascu~
    ## # ... with 78 more rows, and 5 more variables: homeworld <chr>, species <chr>,
    ## #   films <list>, vehicles <list>, starships <list>

``` r
#Mutate (Agregar o transformar nuevas columnas)

starwars %>% 
  select(name, height, mass)
```

    ## # A tibble: 87 x 3
    ##    name               height  mass
    ##    <chr>               <int> <dbl>
    ##  1 Luke Skywalker        172    77
    ##  2 C-3PO                 167    75
    ##  3 R2-D2                  96    32
    ##  4 Darth Vader           202   136
    ##  5 Leia Organa           150    49
    ##  6 Owen Lars             178   120
    ##  7 Beru Whitesun lars    165    75
    ##  8 R5-D4                  97    32
    ##  9 Biggs Darklighter     183    84
    ## 10 Obi-Wan Kenobi        182    77
    ## # ... with 77 more rows

``` r
starwars %>% 
  select(name, height, mass) %>% mutate(NUEVO=height*mass, VIEJO=height-mass/2)
```

    ## # A tibble: 87 x 5
    ##    name               height  mass NUEVO VIEJO
    ##    <chr>               <int> <dbl> <dbl> <dbl>
    ##  1 Luke Skywalker        172    77 13244  134.
    ##  2 C-3PO                 167    75 12525  130.
    ##  3 R2-D2                  96    32  3072   80 
    ##  4 Darth Vader           202   136 27472  134 
    ##  5 Leia Organa           150    49  7350  126.
    ##  6 Owen Lars             178   120 21360  118 
    ##  7 Beru Whitesun lars    165    75 12375  128.
    ##  8 R5-D4                  97    32  3104   81 
    ##  9 Biggs Darklighter     183    84 15372  141 
    ## 10 Obi-Wan Kenobi        182    77 14014  144.
    ## # ... with 77 more rows

``` r
#Transmute (Conservar solo las variables transformadas)

starwars %>% 
  select(name, height, mass) %>% transmute(NUEVO=height*mass, VIEJO=height-mass/2)
```

    ## # A tibble: 87 x 2
    ##    NUEVO VIEJO
    ##    <dbl> <dbl>
    ##  1 13244  134.
    ##  2 12525  130.
    ##  3  3072   80 
    ##  4 27472  134 
    ##  5  7350  126.
    ##  6 21360  118 
    ##  7 12375  128.
    ##  8  3104   81 
    ##  9 15372  141 
    ## 10 14014  144.
    ## # ... with 77 more rows

``` r
#Count (Contar por variable)
starwars %>% count(sex)
```

    ## # A tibble: 5 x 2
    ##   sex                n
    ##   <chr>          <int>
    ## 1 female            16
    ## 2 hermaphroditic     1
    ## 3 male              60
    ## 4 none               6
    ## 5 <NA>               4

``` r
#Distinct (Separa la columna(s) con la variable que deseas y agrupada)
starwars %>% distinct(sex)
```

    ## # A tibble: 5 x 1
    ##   sex           
    ##   <chr>         
    ## 1 male          
    ## 2 none          
    ## 3 female        
    ## 4 hermaphroditic
    ## 5 <NA>

``` r
starwars %>% distinct(sex, mass)
```

    ## # A tibble: 46 x 2
    ##     mass sex   
    ##    <dbl> <chr> 
    ##  1    77 male  
    ##  2    75 none  
    ##  3    32 none  
    ##  4   136 male  
    ##  5    49 female
    ##  6   120 male  
    ##  7    75 female
    ##  8    84 male  
    ##  9    NA male  
    ## 10   112 male  
    ## # ... with 36 more rows

``` r
#Slice (Selecciona las filas por posicion)
#3 primeras filas
starwars %>% slice(1:3)
```

    ## # A tibble: 3 x 14
    ##   name     height  mass hair_color skin_color  eye_color birth_year sex   gender
    ##   <chr>     <int> <dbl> <chr>      <chr>       <chr>          <dbl> <chr> <chr> 
    ## 1 Luke Sk~    172    77 blond      fair        blue              19 male  mascu~
    ## 2 C-3PO       167    75 <NA>       gold        yellow           112 none  mascu~
    ## 3 R2-D2        96    32 <NA>       white, blue red               33 none  mascu~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
#Sin las 3 primeras filas
starwars %>% slice(-(1:3))
```

    ## # A tibble: 84 x 14
    ##    name    height  mass hair_color  skin_color eye_color birth_year sex   gender
    ##    <chr>    <int> <dbl> <chr>       <chr>      <chr>          <dbl> <chr> <chr> 
    ##  1 Darth ~    202   136 none        white      yellow          41.9 male  mascu~
    ##  2 Leia O~    150    49 brown       light      brown           19   fema~ femin~
    ##  3 Owen L~    178   120 brown, grey light      blue            52   male  mascu~
    ##  4 Beru W~    165    75 brown       light      blue            47   fema~ femin~
    ##  5 R5-D4       97    32 <NA>        white, red red             NA   none  mascu~
    ##  6 Biggs ~    183    84 black       light      brown           24   male  mascu~
    ##  7 Obi-Wa~    182    77 auburn, wh~ fair       blue-gray       57   male  mascu~
    ##  8 Anakin~    188    84 blond       fair       blue            41.9 male  mascu~
    ##  9 Wilhuf~    180    NA auburn, gr~ fair       blue            64   male  mascu~
    ## 10 Chewba~    228   112 brown       unknown    blue           200   male  mascu~
    ## # ... with 74 more rows, and 5 more variables: homeworld <chr>, species <chr>,
    ## #   films <list>, vehicles <list>, starships <list>

``` r
#La primera fila
starwars %>% slice_head()
```

    ## # A tibble: 1 x 14
    ##   name     height  mass hair_color skin_color eye_color birth_year sex   gender 
    ##   <chr>     <int> <dbl> <chr>      <chr>      <chr>          <dbl> <chr> <chr>  
    ## 1 Luke Sk~    172    77 blond      fair       blue              19 male  mascul~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
#La ultima fila
starwars %>% slice_tail()
```

    ## # A tibble: 1 x 14
    ##   name     height  mass hair_color skin_color eye_color birth_year sex    gender
    ##   <chr>     <int> <dbl> <chr>      <chr>      <chr>          <dbl> <chr>  <chr> 
    ## 1 Padmé A~    165    45 brown      light      brown             46 female femin~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
#La fila con el valor minimo
starwars %>% slice_min(height)
```

    ## # A tibble: 1 x 14
    ##   name  height  mass hair_color skin_color eye_color birth_year sex   gender   
    ##   <chr>  <int> <dbl> <chr>      <chr>      <chr>          <dbl> <chr> <chr>    
    ## 1 Yoda      66    17 white      green      brown            896 male  masculine
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
#La fila con el valor maximo
starwars %>% slice_max(height)
```

    ## # A tibble: 1 x 14
    ##   name     height  mass hair_color skin_color eye_color birth_year sex   gender 
    ##   <chr>     <int> <dbl> <chr>      <chr>      <chr>          <dbl> <chr> <chr>  
    ## 1 Yarael ~    264    NA none       white      yellow            NA male  mascul~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
#Fila o filas al azar
starwars %>% slice_sample()
```

    ## # A tibble: 1 x 14
    ##   name     height  mass hair_color skin_color eye_color birth_year sex   gender 
    ##   <chr>     <int> <dbl> <chr>      <chr>      <chr>          <dbl> <chr> <chr>  
    ## 1 Dud Bolt     94    45 none       blue, grey yellow            NA male  mascul~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
starwars %>% slice_sample(n=4)
```

    ## # A tibble: 4 x 14
    ##   name      height  mass hair_color skin_color eye_color birth_year sex   gender
    ##   <chr>      <int> <dbl> <chr>      <chr>      <chr>          <dbl> <chr> <chr> 
    ## 1 Tarfful      234   136 brown      brown      blue              NA male  mascu~
    ## 2 Poggle t~    183    80 none       green      yellow            NA male  mascu~
    ## 3 Ratts Ty~     79    15 none       grey, blue unknown           NA male  mascu~
    ## 4 Jar Jar ~    196    66 none       orange     orange            52 male  mascu~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
#Pull (Extrae todos los valores de una o dos columnas)
starwars %>% pull(sex)
```

    ##  [1] "male"           "none"           "none"           "male"          
    ##  [5] "female"         "male"           "female"         "none"          
    ##  [9] "male"           "male"           "male"           "male"          
    ## [13] "male"           "male"           "male"           "hermaphroditic"
    ## [17] "male"           "male"           "male"           "male"          
    ## [21] "male"           "none"           "male"           "male"          
    ## [25] "male"           "male"           "female"         "male"          
    ## [29] "male"           "male"           "male"           "male"          
    ## [33] "male"           "male"           "male"           "male"          
    ## [37] NA               "male"           "male"           NA              
    ## [41] "female"         "male"           "male"           "female"        
    ## [45] "male"           "male"           "male"           "male"          
    ## [49] "male"           "male"           "male"           "female"        
    ## [53] "male"           "male"           "male"           "male"          
    ## [57] "male"           "female"         "male"           "male"          
    ## [61] "female"         "female"         "female"         "male"          
    ## [65] "male"           "male"           "female"         "male"          
    ## [69] "male"           "female"         "female"         "male"          
    ## [73] "none"           "male"           "male"           "female"        
    ## [77] "male"           "male"           "male"           NA              
    ## [81] "male"           "male"           "female"         "male"          
    ## [85] "none"           NA               "female"

``` r
starwars %>% pull(sex, mass)
```

    ##               77               75               32              136 
    ##           "male"           "none"           "none"           "male" 
    ##               49              120               75               32 
    ##         "female"           "male"         "female"           "none" 
    ##               84               77               84             <NA> 
    ##           "male"           "male"           "male"           "male" 
    ##              112               80               74             1358 
    ##           "male"           "male"           "male" "hermaphroditic" 
    ##               77              110               17               75 
    ##           "male"           "male"           "male"           "male" 
    ##             78.2              140              113               79 
    ##           "male"           "none"           "male"           "male" 
    ##               79               83             <NA>             <NA> 
    ##           "male"           "male"         "female"           "male" 
    ##               20               68               89               90 
    ##           "male"           "male"           "male"           "male" 
    ##             <NA>               66               82             <NA> 
    ##           "male"           "male"           "male"           "male" 
    ##             <NA>             <NA>               40             <NA> 
    ##               NA           "male"           "male"               NA 
    ##             <NA>               80             <NA>               55 
    ##         "female"           "male"           "male"         "female" 
    ##               45             <NA>               65               84 
    ##           "male"           "male"           "male"           "male" 
    ##               82               87             <NA>               50 
    ##           "male"           "male"           "male"         "female" 
    ##             <NA>             <NA>               80             <NA> 
    ##           "male"           "male"           "male"           "male" 
    ##               85             <NA>             <NA>               80 
    ##           "male"         "female"           "male"           "male" 
    ##             56.2               50             <NA>               80 
    ##         "female"         "female"         "female"           "male" 
    ##             <NA>               79               55              102 
    ##           "male"           "male"         "female"           "male" 
    ##               88             <NA>             <NA>               15 
    ##           "male"         "female"         "female"           "male" 
    ##             <NA>               48             <NA>               57 
    ##           "none"           "male"           "male"         "female" 
    ##              159              136               79               48 
    ##           "male"           "male"           "male"               NA 
    ##               80             <NA>             <NA>             <NA> 
    ##           "male"           "male"         "female"           "male" 
    ##             <NA>             <NA>               45 
    ##           "none"               NA         "female"

``` r
#Summarise (Resumen en una fila)

starwars %>% summarise(first(name), min(height), max(mass))
```

    ## # A tibble: 1 x 3
    ##   `first(name)`  `min(height)` `max(mass)`
    ##   <chr>                  <int>       <dbl>
    ## 1 Luke Skywalker            NA          NA

``` r
#Usar el na.rm = TRUE para evitar que los datos se combinen con los n.a.#
starwars %>% summarise(first(name), min(height, na.rm = TRUE), max(mass, na.rm = TRUE))
```

    ## # A tibble: 1 x 3
    ##   `first(name)`  `min(height, na.rm = TRUE)` `max(mass, na.rm = TRUE)`
    ##   <chr>                                <int>                     <dbl>
    ## 1 Luke Skywalker                          66                      1358

``` r
#Le agregamos nombre a las columnas
starwars %>% summarise(Nombre=first(name), peso_min=min(height, na.rm = TRUE), mass_max=max(mass, na.rm = TRUE))
```

    ## # A tibble: 1 x 3
    ##   Nombre         peso_min mass_max
    ##   <chr>             <int>    <dbl>
    ## 1 Luke Skywalker       66     1358

``` r
#Group_by (Solo te da el dato de cuantos grupos existen por la variable elegida)

starwars %>% group_by(sex)
```

    ## # A tibble: 87 x 14
    ## # Groups:   sex [5]
    ##    name    height  mass hair_color  skin_color eye_color birth_year sex   gender
    ##    <chr>    <int> <dbl> <chr>       <chr>      <chr>          <dbl> <chr> <chr> 
    ##  1 Luke S~    172    77 blond       fair       blue            19   male  mascu~
    ##  2 C-3PO      167    75 <NA>        gold       yellow         112   none  mascu~
    ##  3 R2-D2       96    32 <NA>        white, bl~ red             33   none  mascu~
    ##  4 Darth ~    202   136 none        white      yellow          41.9 male  mascu~
    ##  5 Leia O~    150    49 brown       light      brown           19   fema~ femin~
    ##  6 Owen L~    178   120 brown, grey light      blue            52   male  mascu~
    ##  7 Beru W~    165    75 brown       light      blue            47   fema~ femin~
    ##  8 R5-D4       97    32 <NA>        white, red red             NA   none  mascu~
    ##  9 Biggs ~    183    84 black       light      brown           24   male  mascu~
    ## 10 Obi-Wa~    182    77 auburn, wh~ fair       blue-gray       57   male  mascu~
    ## # ... with 77 more rows, and 5 more variables: homeworld <chr>, species <chr>,
    ## #   films <list>, vehicles <list>, starships <list>

``` r
#Group_by y summarise funcionan en conjunto casi siempre, esto debido a que hace resumenes mas completos y especficos
starwars %>% group_by(sex) %>% summarise(Media.peso = mean(height, na.rm = TRUE), Suma.mass = sum(mass, na.rm = TRUE), Cantidad = n())
```

    ## # A tibble: 5 x 4
    ##   sex            Media.peso Suma.mass Cantidad
    ##   <chr>               <dbl>     <dbl>    <int>
    ## 1 female               169.      492.       16
    ## 2 hermaphroditic       175      1358         1
    ## 3 male                 179.     3564.       60
    ## 4 none                 131.      279         6
    ## 5 <NA>                 181.       48         4

``` r
#n_distinct dentro de summarise (Cuenta el numero de valores en un vector)
starwars %>% summarise(n_distinct(name), n_distinct(height), n_distinct(mass), n_distinct(sex))
```

    ## # A tibble: 1 x 4
    ##   `n_distinct(name)` `n_distinct(height)` `n_distinct(mass)` `n_distinct(sex)`
    ##                <int>                <int>              <int>             <int>
    ## 1                 87                   46                 39                 5

``` r
#Across (especifica las columnas sobre las que deseas que actúe la función)
#contar el numero de valores en name, height y mass
starwars %>% summarise(across(c(name,height,mass,sex), n_distinct))
```

    ## # A tibble: 1 x 4
    ##    name height  mass   sex
    ##   <int>  <int> <int> <int>
    ## 1    87     46    39     5

``` r
#contar el numero de valores de todos los vectores
starwars %>% summarise(across(everything(), n_distinct))
```

    ## # A tibble: 1 x 14
    ##    name height  mass hair_color skin_color eye_color birth_year   sex gender
    ##   <int>  <int> <int>      <int>      <int>     <int>      <int> <int>  <int>
    ## 1    87     46    39         13         31        15         37     5      3
    ## # ... with 5 more variables: homeworld <int>, species <int>, films <int>,
    ## #   vehicles <int>, starships <int>

``` r
#contar el numero de valores de los vectores empiezen con eye
starwars %>% summarise(across(starts_with("eye"), n_distinct))
```

    ## # A tibble: 1 x 1
    ##   eye_color
    ##       <int>
    ## 1        15

``` r
#contar el numero de valores de los vectores que contengan la palabra color
starwars %>% summarise(across(contains("color"), n_distinct))
```

    ## # A tibble: 1 x 3
    ##   hair_color skin_color eye_color
    ##        <int>      <int>     <int>
    ## 1         13         31        15

``` r
#contar el maximo valor en height y mass"
starwars %>% summarise(across(c(height,mass), max, na.rm = TRUE))
```

    ## # A tibble: 1 x 2
    ##   height  mass
    ##    <int> <dbl>
    ## 1    264  1358

``` r
#Rownames_to_column (Convierte en una nueva columna el nombre de la fila)
starwars %>% rownames_to_column(var="orden")
```

    ## # A tibble: 87 x 15
    ##    orden name     height  mass hair_color  skin_color eye_color birth_year sex  
    ##    <chr> <chr>     <int> <dbl> <chr>       <chr>      <chr>          <dbl> <chr>
    ##  1 1     Luke Sk~    172    77 blond       fair       blue            19   male 
    ##  2 2     C-3PO       167    75 <NA>        gold       yellow         112   none 
    ##  3 3     R2-D2        96    32 <NA>        white, bl~ red             33   none 
    ##  4 4     Darth V~    202   136 none        white      yellow          41.9 male 
    ##  5 5     Leia Or~    150    49 brown       light      brown           19   fema~
    ##  6 6     Owen La~    178   120 brown, grey light      blue            52   male 
    ##  7 7     Beru Wh~    165    75 brown       light      blue            47   fema~
    ##  8 8     R5-D4        97    32 <NA>        white, red red             NA   none 
    ##  9 9     Biggs D~    183    84 black       light      brown           24   male 
    ## 10 10    Obi-Wan~    182    77 auburn, wh~ fair       blue-gray       57   male 
    ## # ... with 77 more rows, and 6 more variables: gender <chr>, homeworld <chr>,
    ## #   species <chr>, films <list>, vehicles <list>, starships <list>

``` r
#Combinacion de tablas:
#Para el ejemplo creare 2 tablas nuevas
Uno <- starwars %>% slice(1:3)
Uno
```

    ## # A tibble: 3 x 14
    ##   name     height  mass hair_color skin_color  eye_color birth_year sex   gender
    ##   <chr>     <int> <dbl> <chr>      <chr>       <chr>          <dbl> <chr> <chr> 
    ## 1 Luke Sk~    172    77 blond      fair        blue              19 male  mascu~
    ## 2 C-3PO       167    75 <NA>       gold        yellow           112 none  mascu~
    ## 3 R2-D2        96    32 <NA>       white, blue red               33 none  mascu~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
Dos <- starwars %>% slice(5:7)
Dos
```

    ## # A tibble: 3 x 14
    ##   name     height  mass hair_color  skin_color eye_color birth_year sex   gender
    ##   <chr>     <int> <dbl> <chr>       <chr>      <chr>          <dbl> <chr> <chr> 
    ## 1 Leia Or~    150    49 brown       light      brown             19 fema~ femin~
    ## 2 Owen La~    178   120 brown, grey light      blue              52 male  mascu~
    ## 3 Beru Wh~    165    75 brown       light      blue              47 fema~ femin~
    ## # ... with 5 more variables: homeworld <chr>, species <chr>, films <list>,
    ## #   vehicles <list>, starships <list>

``` r
#Combinar columnas
bind_cols(Uno,Dos)
```

    ## New names:
    ## * name -> name...1
    ## * height -> height...2
    ## * mass -> mass...3
    ## * hair_color -> hair_color...4
    ## * skin_color -> skin_color...5
    ## * ...

    ## # A tibble: 3 x 28
    ##   name...1       height...2 mass...3 hair_color...4 skin_color...5 eye_color...6
    ##   <chr>               <int>    <dbl> <chr>          <chr>          <chr>        
    ## 1 Luke Skywalker        172       77 blond          fair           blue         
    ## 2 C-3PO                 167       75 <NA>           gold           yellow       
    ## 3 R2-D2                  96       32 <NA>           white, blue    red          
    ## # ... with 22 more variables: birth_year...7 <dbl>, sex...8 <chr>,
    ## #   gender...9 <chr>, homeworld...10 <chr>, species...11 <chr>,
    ## #   films...12 <list>, vehicles...13 <list>, starships...14 <list>,
    ## #   name...15 <chr>, height...16 <int>, mass...17 <dbl>, hair_color...18 <chr>,
    ## #   skin_color...19 <chr>, eye_color...20 <chr>, birth_year...21 <dbl>,
    ## #   sex...22 <chr>, gender...23 <chr>, homeworld...24 <chr>,
    ## #   species...25 <chr>, films...26 <list>, vehicles...27 <list>, ...

``` r
#Combinar filas
ow=bind_rows(Uno,Dos)

#Para que se puedan fusionar las tablas:
#en bind_cols tienen que tener la misma cantidad de filas
#en bind_rows tienen que tener la misma cantidad de columnas
```
