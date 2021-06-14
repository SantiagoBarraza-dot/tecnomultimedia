//Santiago Barraza, 84159/3

int Velocidad = 1; 

int pantalla;

int Imagen1, Imagen2, Imagen3, Imagen4, Imagen5, Imagen6, Imagen7, Imagen8, Imagen9, Imagen10, Imagen11;

int Texto1, Texto2, Texto3, Texto4, Texto5, Texto6;

PImage photo, photo2, photo3, photo4, photo5, photo6;

PFont font;

void setup() {
  background(0);
  size(500, 500);
  
  //Importación y reproducción de música
import processing.sound.*;
SoundFile sonido;
{sonido = new SoundFile(this, "cancion.mp3");
sonido.play();
}

  //Uso de fuente
  font = loadFont ("Georgia-Bold-48.vlw");
  textFont(font);

  //Imagenes precargadas
  photo = loadImage("gtasanandreas.jpg");
  photo2 = loadImage("CJ.jpg");
  photo3 = loadImage("sweet.jpg");
  photo4 = loadImage("bigsmoke.jpg");
  photo5 = loadImage("ogloc.jpg");
  photo6 = loadImage("jose.jpg");
  //Ubicación de los textos
  Texto1 = 200;
  Texto2 = 250;
  Texto3 = 1080;
  Texto4 = 2650;
  Texto5 = 2675;
  Texto6 = 2700;
  //Ubicación de imagenes.
  Imagen1 = 600;
  Imagen2 = 1100;
  Imagen3 = 1150;
  Imagen4 = 1400;
  Imagen5 = 1450;
  Imagen6 = 1700;
  Imagen7 = 1750;
  Imagen8 = 2000;
  Imagen9 = 2050;
  Imagen10 = 2300;
  Imagen11 = 2350;
}

void draw() {
  background(0);
  if (pantalla==0) {
    //Titulo
    textSize(25);
    text("Grand Theft Auto: San Andreas", 40, Texto1);
    //Subtitulo
    textSize(15);
    text("By Rockstar Games y Rockstar North", 100, Texto2);
    //Creación de botón para pasar a la pantalla siguiente
    stroke(255);
    noFill();
    rect(230, 290, 49, 13);
    textSize(10);
    text("Creditos", 235, 300);
  }

  if (pantalla==1) {
    textSize(15);
    text("Protagonistas", 210, Texto3=Texto3-Velocidad);

    //Creación de imagenes y sincronización en movimiento
    image(photo, 100, Imagen1=Imagen1-Velocidad);
    textSize(15);
    image(photo2, 250, Imagen2=Imagen2-Velocidad);
    text("Carl 'CJ' Johnson", 75, Imagen3=Imagen3-Velocidad); 
    image(photo3, 250, Imagen4=Imagen4-Velocidad);
    text("Sweet Johnson", 75, Imagen5=Imagen5-Velocidad);
    image(photo4, 250, Imagen6=Imagen6-Velocidad);
    text("Melvin 'Big Smoke' Harris", 35, Imagen7=Imagen7-Velocidad);
    image(photo5, 250, Imagen8=Imagen8-Velocidad);
    text("Jeffrey 'OG Loc' Cross", 55, Imagen9=Imagen9-Velocidad);
    image(photo6, 250, Imagen10=Imagen10-Velocidad);
    text("José Torino", 75, Imagen11=Imagen11-Velocidad);

    //Botón para saltear/skipear los créditos finales
    stroke(255);
    noFill();
    rect(8, 480, 43, 15);
    textSize(10);
    text("Skip", 10, 490);
  }
  if (pantalla==2) {
    //Pantalla final
    fill(255);
    textSize(15);
    text("Este juego fue pensado por R* Games", 110, 200);
    text("y desarrollado en conjunto con R* North", 100, 250);
    text("Lanzado en 2004 y el videojuego más adquirido de la saga.", 25, 300);
    //Realización de botón para volver a pantalla 1
    stroke(255);
    noFill();
    rect(215, 338, 90, 15);
    textSize(10);
    text("Volver al inicio", 220, 350);
  }
}

void mouseClicked() {
  //Función de los botones
  if (pantalla==0) {
    if (mouseX>230 && mouseX<270 && mouseY>290 && mouseY<300) {
      pantalla=1;
    }
  }
  //Botón de continuar
  if (pantalla==1) {
    if (mouseX>8 && mouseX<50 && mouseY>480 && mouseY<500) {
      pantalla=2;
    }
  }
  //Botón para volver a pantalla 1
  if (pantalla==2) {
    if (mouseX>215 && mouseX<290 && mouseY>338 && mouseY<360) {
      pantalla=0;
    }
  }
}
