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
 nubes,
 terreno,
 */

cloud c;
mount m;
terreno t;
Cam cam;
Obst ob ;
int b=0, opcion, opc;
int ancho, alto, control=0;
PFont fuente;
PImage menu, fondo, cla, sonido, sn1, sn2; 
PImage nubes, montana, terrenoN, obst, moto, jump;
color n1, n2, n3,l;
color b1, b2, b3;
boolean salto, play;
float[] x = new float [1000];



void setup() {
  size(1000, 500);
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
    break;
  case 1:
    c.display();
    m.display();
    t.display();
    cam.display();
    ob.display();
    break;
  case 2:
    Sonido();
    break;
  case 3:
    opciones();
    break;
  }
}

void mouseClicked() {
  if ((mouseX>650)& (mouseX<900) && (mouseY>135) && (mouseY<205)) {
    opcion = 1;
  }
  if ((mouseX>650) && (mouseX<900) && (mouseY>265) && (mouseY<335)) {
    opcion = 2;
  }
  if ((mouseX>650) && (mouseX<900) && (mouseY>395) && (mouseY<465)) {
    opcion = 3;
  }
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50)) {
    opcion = 0;
  }
}
