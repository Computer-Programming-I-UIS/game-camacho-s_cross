/* Juego Camacho´s Cross
 Creado por: Sergio Angarita Camacho  2190441
 Jesse Blair Camacho 
 Descripción: Juego ligeramente basado en el dinosaurio offline de Google, el motociclista deberá 
 saltar los muñecos de nieve para poder sobrevivir y asi alcanzar el mejor puntaje.*/

/* JESSE POR AHORA PONGAMOS AQUI LAS REFERENCIAS DE LAS IMAGENES
 clasificacion, https://videojuegos.fandom.com/es/wiki/Entertainment_Software_Rating_Board
 fondo, https://www.10wallpaper.com/es/view/Forest_Winter_Snow_Mountains_Pine_Tree.html
 snowman, https://www.cleanpng.com/png-snowman-christmas-trolls-animaatio-clip-art-sam-ha-4001147/ autor: Cisily
 Montañas, http://www.andinoclubpamir.cl/cropped-montanas-png/  autor: Posted by Carlos A. Gatica V.
 nubes,https://www.stickpng.com/es/img/naturaleza/nubes/pequena-nube-individual
 terreno,https://www.pngegg.com/en/png-niopa
 */

cloud c;
mount m;
terreno t;
Cam cam;
Obst ob ;
import ddf.minim.*;
Minim minim;
AudioPlayer audmenu, audjuego, audperder, audsalto;
int b=0, opcion, opc;
int ancho, alto, control=0;
PFont fuente;
PImage menu, fondo, cla, sonido, sn1, sn2, fondo2; 
PImage nubes, montana, terrenoN, obst, moto, jump;
color n1, n2, n3, l;
color b1, b2, b3;
boolean salto, play, sonid=true;
float[] x = new float [1000];
int puntaje;
int puntaje_max=0;



void setup() {
  size(1000, 500);
  puntaje = 0;
  minim = new Minim(this);
  audmenu = minim.loadFile("menu.wav");
  audjuego = minim.loadFile("juego.wav");
  audperder = minim.loadFile("perder.wav");
  audsalto = minim.loadFile("salto.wav");


  nubes =loadImage("nube3.png");
  c = new cloud(nubes, 0);

  montana =loadImage("montanas.png");
  m = new mount(montana, 0);

  terrenoN= loadImage("terrenonie.jpg");
  t = new terreno(terrenoN, 0);

  moto=loadImage("moto4r.png");
  cam = new Cam(moto, 20, 250, 170, 160);

  jump=loadImage("salto.png");

  cla=loadImage("clasificacion.png");

  sn1=loadImage("sn1.png");
  sn2=loadImage("sn2.png");

  obst=loadImage("snowman_.png");
  ob = new Obst(obst, 280);
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
    text("Puntaje max:", width-200, 100);
    text(puntaje_max, width-100, 100);
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
    opciones();
    break;
  case 4:
    perder();
    audjuego.pause();
    audperder.play();
    break;
  }
}
