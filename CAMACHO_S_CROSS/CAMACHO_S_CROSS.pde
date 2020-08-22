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
Botones btn1, btn2, btn3;
color b1, b2, b3;
int b=0, opcion;
int ancho, alto;
PFont fuente;
PImage menu, fondo, cla; 
color n1,n2,n3,l;
PImage nubes, montana, terrenoN, obst, moto, jump;
boolean salto,play;
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

  obst=loadImage("snowman_.png");
  ob = new Obst(obst, 280);
  fuente=loadFont("Harlow.vlw");
    textFont(fuente);
    menu =loadImage("menu.png");
    fondo =loadImage("fondo.jpg");
    btn1 = new Botones(650,135,250, 70, 5);
    btn2 = new Botones(650,265,250, 70, 5);
    btn3 = new Botones(650,395,250, 70, 5);
    
}
void draw() {
  background(#4BBBFF);
  switch (opcion){
  case 0: 
  image(fondo, 0, 0);
  image(menu, -50, -70);
  image(cla, 10, 400);
  fill(0);
  textSize(80);
  text("Camacross",600,70);  
  btn1.display();
  btn2.display();
  btn3.display();
  break;
  case 1:
  c.display();
  m.display();
  t.display();
  cam.display();
  ob.display();
  break;
  case 2:
  opciones();
  break;
  case 3:
  creditos();
  break;
  }
}

void mouseClicked(){
 if((mouseX>btn1.x) && (mouseX<btn1.x+250) && (mouseY>btn1.y) && (mouseY<btn1.y+70)){
   opcion = 1;
 }
 if((mouseX>btn2.x) && (mouseX<btn2.x+250) && (mouseY>btn2.y) && (mouseY<btn2.y+70)){
   opcion = 2;
 }
 if((mouseX>btn3.x) && (mouseX<btn3.x+250) && (mouseY>btn3.y) && (mouseY<btn3.y+70)){
   opcion = 3;
 }
 if((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50)){
   opcion = 0;
 }
}
