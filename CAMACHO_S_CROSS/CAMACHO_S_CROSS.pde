/* Juego Camacho´s Cross
 Creado por: Sergio Andrés Angarita Camacho  2190441
 Jesse Solomon Blair Camacho     
 Descripción: Juego ligeramente basado en el dinosaurio offline de Google, el motociclista deberá 
 saltar los muñecos de nieve para poder sobrevivir y asi alcanzar el mejor puntaje.
 POR FAVOR AÑADIR LA BIBLIOTECA MINIM EN CASO DE NO TENERLA (esta se usa para reproducir el audio)*/

//Se declaran las variables globales, los objetos,las imagenes, y audio
cloud c; //nubes
mount m; //montañas
terreno t;//terreno
Cam cam;//personaje
Obst ob ;//obstaculos
import ddf.minim.*; //se importa la biblioteca minim que se usa en la parte del audio
Minim minim;
AudioPlayer audmenu, audjuego, audperder, audsalto;//nombres de los audios
int b=0, opcion, opc;
int ancho, alto, control=0;
PFont fuente; //Se añade una fuente 
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
  audmenu = minim.loadFile("menu.wav"); //audio para el menú
  audjuego = minim.loadFile("juego.wav"); //audio para la jugabilidad
  audperder = minim.loadFile("perder.wav"); //audio al perder
  audsalto = minim.loadFile("salto.wav");  //audio para el salto

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

  fuente=loadFont("Harlow.vlw");  //fuente utilizada en la interfaz del juego
  textFont(fuente);

  menu =loadImage("menu.png");  //imagen del motociclista del menu
  fondo =loadImage("fondo.jpg");  //imagen del fondo en el menu
  fondo2 =loadImage("fondo2.jpg");  //imagen del fondo al perder
}
void draw() {
  background(#4BBBFF); //color de fondo

  switch (opcion) { //switch para definir las opciones del menu
    //menu principal
  case 0:       
    image(fondo, 0, 0);
    image(menu, -50, -70);
    image(cla, 10, 400);
    fill(0);
    textSize(80);
    text("Camacross", 600, 70);
    botones(); 
    if (sonid==true) {
      audmenu.play();
    } else {
      audmenu.pause();
    }
    break;
    //jugabilidad
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
    //opciones de sonido
  case 2:
    Sonido();
    if (sonid==true) {
      audmenu.play();
    }
    if (sonid==false) {
      audmenu.pause();
    }
    break;
    //opciones del juego (ayuda y créditos)
  case 3:
    options();
    break;
    //Cuando el jugador pierde
  case 4:
    perder();
    audjuego.pause();
    audperder.play();
    break;
  }
}
