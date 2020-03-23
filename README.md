# Ciu práctica 6
video processing

## Autor 
**Doramas Báez Bernal** <br/>
Correo: doramas.baez101@alu.ulpgc.es

## Gif
<div align="center">
  <img src="/cam/animacion.gif" alt="gif de la practica 6">
  <p align="center">
    Figura 1: Ejemplo de ejecucion
  </p>
</div>

## Índice
* [Introducción](#introducción)
* [Dependencias](#dependencias) 
* [Desarrollo](#desarrollo)
    * [Información general](#informaciónGeneral)
    * [Filtros](#filtros)
* [Referencias](#referencias)

## Introducción
El objetivo de esta práctica consiste en la elaboración de diferentes filtros sobre una captura de video. En este caso, vamos a aplicar un blur y modificar los canales RGB de la imagen original. Para ello, haremos uso de la librería openCV que tiene distintas funcionalidades como en este caso CVimage y Imgproc. Que son básicamente, las funcionalidades que se han utilizado para esta práctica.


## Dependencias
Es necesario disponer de openCV para poder ejecutar la práctica. En este caso, se ha seguido los pasos del guión instalando la versión [recomentada](http://www.magicandlove.com/blog/2018/11/22/opencv-4-0-0-java-built-and-cvimage-library/).
 

## Desarrollo

### Información general <a id="informaciónGeneral"></a>

Básicamente como hasta ahora, cuando iniciamos la aplicación, aparecerá la vista principal, en la que se nos explicarán los controles. En este caso, disponemos de los siguientes controles:
 - Left key: change filter
 - Right key: change filter
 - Enter: Cambiar entre modo pausa y modo resume 
 - Mouse: Modificar la intensidad del filtro
 

### Filtros<a id="filtros"></a>
Una vez pulsamos el botón enter, comenzará el funcionamiento de la aplicación en este caso dandonos 4 filtros. 
 - Efecto1: Se harán uso de las funciones de Imgproc para realizar un blur y un canny sobre la foto original y copiar dichos cambios en la segunda imagen.
 - Efecto2: Básicamente consiste en aplicar uno de los 3 colores RGB sobre la imagen original.
 - Efecto3: Básicamente consiste en aplicar uno de los 3 colores RGB sobre la imagen original.
 - Efecto4: Básicamente consiste en aplicar uno de los 3 colores RGB sobre la imagen original.
 
 Además, de estos filtros se permite modificar la intensidad de los mismos. En cuanto a los colores, se vería la imagen más oscura o mas  rojiza,azulada o verdosa. En cuanto al primer efecto, se haría mas intenso siendo más notable los patrones o menos intensos.



## Referencias

* [Guion de prácticas](https://cv-aep.ulpgc.es/cv/ulpgctp20/pluginfile.php/126724/mod_resource/content/22/CIU_Pr_cticas.pdf)
* [GifAnimation](https://github.com/extrapixel/gif-animation)
* [Adobe xd](https://www.adobe.com/es/products/xd.html)
* [processing.org](https://processing.org/)
