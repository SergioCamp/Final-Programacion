Final.Progra
================
Campos Torres Sergio Junior
31/1/2022

**Librerias a utilizar**

``` r
library(sf)
```

    ## Linking to GEOS 3.9.1, GDAL 3.2.1, PROJ 7.2.1; sf_use_s2() is TRUE

``` r
library(terra)
```

    ## terra version 1.4.22

``` r
#library(raster)
library(tidyverse)
```

    ## -- Attaching packages --------------------------------------- tidyverse 1.3.1 --

    ## v ggplot2 3.3.5     v purrr   0.3.4
    ## v tibble  3.1.6     v dplyr   1.0.7
    ## v tidyr   1.1.4     v stringr 1.4.0
    ## v readr   2.1.0     v forcats 0.5.1

    ## -- Conflicts ------------------------------------------ tidyverse_conflicts() --
    ## x tidyr::extract()  masks terra::extract()
    ## x dplyr::filter()   masks stats::filter()
    ## x dplyr::lag()      masks stats::lag()
    ## x purrr::simplify() masks terra::simplify()
    ## x dplyr::src()      masks terra::src()

``` r
library(rgdal)
```

    ## Loading required package: sp

    ## Please note that rgdal will be retired by the end of 2023,
    ## plan transition to sf/stars/terra functions using GDAL and PROJ
    ## at your earliest convenience.
    ## 
    ## rgdal: version: 1.5-28, (SVN revision 1158)
    ## Geospatial Data Abstraction Library extensions to R successfully loaded
    ## Loaded GDAL runtime: GDAL 3.2.1, released 2020/12/29
    ## Path to GDAL shared files: C:/Users/Sergio/Documents/R/win-library/4.1/rgdal/gdal
    ## GDAL binary built with GEOS: TRUE 
    ## Loaded PROJ runtime: Rel. 7.2.1, January 1st, 2021, [PJ_VERSION: 721]
    ## Path to PROJ shared files: C:/Users/Sergio/Documents/R/win-library/4.1/rgdal/proj
    ## PROJ CDN enabled: FALSE
    ## Linking to sp version:1.4-6
    ## To mute warnings of possible GDAL/OSR exportToProj4() degradation,
    ## use options("rgdal_show_exportToProj4_warnings"="none") before loading sp or rgdal.
    ## Overwritten PROJ_LIB was C:/Users/Sergio/Documents/R/win-library/4.1/rgdal/proj

    ## 
    ## Attaching package: 'rgdal'

    ## The following object is masked from 'package:terra':
    ## 
    ##     project

**Ejercicio 11**

``` r
L=1200
Cs=190
Ci=80
J=(Cs-Ci)/L

Tc=function(L="Longitud.cauce",J="Pendientemedia.cuenca"){
  Tc=0.3*(L/J^(1/4))^0.76
  return(Tc)
}

Tc(L,J)
```

    ## [1] 103.3901

**Ejercicios 13 y 14**

No deja leer el archivo debido al error de las columnas

``` r
#GBIF=read.csv("D:/Final_Programacion/Final Programacion/gbif_peru.csv")
```

**Ejercicio 15**

Para usar las librerias Raster y Tmap se necesita de Terra, pero por mas
que he buscado una solucion no me deja instalar la ultima version de
esta libreria y me sale el siguiente error

``` r
#namespace ‘terra’ 1.4-22 is being loaded, but >= 1.5.12 is required
```

Aun asi dejo la funcion en raster que me permitiria leer el shapefile
que seria

``` r
#shapefile("D:/Final_Programacion/Final Programacion/subcuencas.shp")
```

Usando la libreria Sf primero uso mi carpeta y luego el archivo

``` r
setwd('D:/Final_Programacion/Final Programacion')
Subcuenca = st_read('subcuencas.shp')
```

    ## Reading layer `subcuencas' from data source 
    ##   `D:\Final_Programacion\Final Programacion\subcuencas.shp' using driver `ESRI Shapefile'
    ## Simple feature collection with 9 features and 24 fields
    ## Geometry type: POLYGON
    ## Dimension:     XY
    ## Bounding box:  xmin: 61604.32 ymin: 9116218 xmax: 141837 ymax: 9218859
    ## Projected CRS: WGS 84 / UTM zone 18S
