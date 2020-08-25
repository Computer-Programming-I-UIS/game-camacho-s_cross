/* Juego Camacho´s Cross
 Creado por: Sergio Angarita Camacho  2190441
 Jesse Blair Camacho 
 Descripción: Juego ligeramente basado en el dinosaurio offline de Google, el motociclista deberá 
 saltar los muñecos de nieve para poder sobrevivir y asi alcanzar el mejor puntaje.*/
 
//Declaramos las variables, los objetos,las imagenes, y audio
cloud c; //nubes
mount m; //montañas
terreno t;//terreno
Cam cam;//personaje
Obst ob ;//obstaculos
import ddf.minim.*;
Minim minim;
AudioPlayer audmenu, audjuego, audperder, audsalto;
int b=0, opcion, opc;
int ancho, alto, control=0;
PFont fuente;
PImage menu, fondo, cla, sonido, sn1, sn2, fondo2;//imagenes de cada una de los terminos 
PImage nubes, montana, terrenoN, obst, moto, jump;//imagenes de los objetos 
color n1, n2, n3, l;
color b1, b2, b3;
boolean salto, play, sonid=true;
int puntaje;//puntaje
int puntaje_max=0; //puntaje maximo

void setup() {
  size(1000, 500); //tamaño ventana de juego
  puntaje = 0; //valor inicial del puntaje
  minim = new Minim(this);
  audmenu = minim.loadFile("menu.wav");
  audjuego = minim.loadFile("juego.wav");
  audperder = minim.loadFile("perder.wav");
  audsalto = minim.loadFile("salto.wav");

  nubes =loadImage("nube3.png"); //imagen de la nube
  c = new cloud(nubes, 0);//variables para el constructor de las nubes

  montana =loadImage("montanas.png");//imagen de las montanas
  m = new mount(montana, 0);

  terrenoN= loadImage("terrenonie.jpg");//imagen del terreno
  t = new terreno(terrenoN, 0);//variables para el constructor de las nubes

  moto=loadImage("moto4r.png");//imagen de la moto
  cam = new Cam(moto, 70, 250, 170, 160);//variables para el constructor de la moto

  jump=loadImage("salto.png");//imagen del salto

  cla=loadImage("clasificacion.png"); //imagen de la clasificacion del juego

  sn1=loadImage("sn1.png");//imagen de 
  sn2=loadImage("sn2.png");//imagen de 

  obst=loadImage("snowman_.png");//imagen del obstaculo
  ob = new Obst(obst, 280, 150, 133);//variables para el constructor de los obstaculos

  fuente=loadFont("Harlow.vlw");
  textFont(fuente);

  menu =loadImage("menu.png");
  fondo =loadImage("fondo.jpg");
  fondo2 =loadImage("fondo2.jpg");
}
void draw() {
  background(#4BBBFF);

  switch (opcion) {
  case 0: 
    image(fondo, 0, 0);
    image(menu, -50, -70);
    image(cla, 10, 400);
    fill(0);
    textSize(80);
    text("Camacross", 600, 70);
    botones(); 
    audmenu.play();
    break;
  case 1:
    c.display();
    m.display();
    t.display();
    cam.display();
    ob.display();
    puntaje();
    audjuego.play();
    audmenu.pause();
    break;
  case 2:
    Sonido();
    break;
  case 3:
    options();
    break;
  case 4:
    perder();
    audjuego.pause();
    audperder.play();
    break;
  }
}
