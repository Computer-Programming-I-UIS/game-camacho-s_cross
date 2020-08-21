cloud c;
mount m;
terreno t;
Cam cam;
Botones [] btn = new Botones[3];
color []col= new color [3];
color b1, b2, b3;
int b=0;
int ancho, alto;
PFont fuente;
PImage menu, fondo; 
color n1=255,n2=255,n3=255;

PImage nubes, montana, terrenoN, obst, moto, jump;
boolean salto,play;
Obst ob ;
float[] x = new float [1000];



void setup() {
col[0]=b1;
col[1]=b2;
col[2]=b3;
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

  obst=loadImage("snowman_.png");
  ob = new Obst(obst, 280);
  fuente=loadFont("Harlow.vlw");
    textFont(fuente);
    menu =loadImage("menu.png");
    fondo =loadImage("fondo.jpg");
    for (int i=0; i<3; i++) {    //for para dibujar los botones
    b +=130;
    btn [i] = new Botones(650, b,250, 70, 5,col[i]);
    
  }
}
void draw() {
  background(#4BBBFF);
  if(play==true){
  c.display();
  m.display();
  t.display();
  cam.display();
  ob.display();

  }
  
  else{
    image(fondo, 0, 0);
  image(menu, -50, -70);
  fill(0);
  textSize(50);
  text("Camacho´s Game",580,70);
  for (int i = 0; i<btn.length; i++) {    //for para llamar los metodos de la clase de Botones
    btn [i].display();
  }  
  fill(n1);
  textSize(30);
  text("Start", 740, 173);
  fill(n2);
  text("Sound", 740, 303);
  fill(n3);
  text("Options", 740, 435);
  }
}

void mouseClicked(){
 if((mouseX>btn[0].x) && (mouseX<btn[0].x+250) && (mouseY>btn[0].y) && (mouseY<btn[0].y+70)){
   play=true;
 }
}
