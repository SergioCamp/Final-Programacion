library(sf)
library(terra)
library(raster)
library(tidyverse)
library(rgdal)

##Ejercicio 11

L=1200
Cs=190
Ci=80
J=(Cs-Ci)/L

Tc=function(L="Longitud.cauce",J="Pendientemedia.cuenca"){
  Tc=0.3*(L/J^(1/4))^0.76
  return(Tc)
}

Tc(L,J)

##Ejercicio 12

data ("airquality")

airquality %>% 
  select(Wind)

##Ejercicios 13 y 14

GBIF=read.csv("D:/Final_Programacion/Final Programacion/gbif_peru.csv")

"No deja leer el archivo debido al error de las columnas"

##Ejercicio 15

"Para usar las librerias Raster y Tmap se necesita de Terra, pero por mas que he buscado una solucion 
no me deja instalar la ultima version de esta libreria y me sale el siguiente error"

#namespace ‘terra’ 1.4-22 is being loaded, but >= 1.5.12 is required

"Aun asi dejo la funcion en raster que me permitiria leer el shapefile que seria"

shapefile("D:/Final_Programacion/Final Programacion/subcuencas.shp")

"Usando la libreria Sf primero uso mi carpeta y luego el archivo"

setwd('D:/Final_Programacion/Final Programacion')

Subcuenca = st_read('subcuencas.shp')