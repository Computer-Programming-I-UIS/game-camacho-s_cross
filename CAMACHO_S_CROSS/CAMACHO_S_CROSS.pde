cloud c;
mount m;
terreno t;
<<<<<<< HEAD
Cam cam;
PImage nubes, montana, terrenoN, moto;
void setup() {

  size(1000, 500);
  frameRate(300);
  nubes =loadImage("nube3.png");
  c = new cloud(nubes,0);
  
=======
PImage nubes, montana, terrenoN;
void setup() {

  size(1000, 500);
  nubes =loadImage("nube3.png");
  c = new cloud(nubes,0);


>>>>>>> 175b21087460f803fa25f7778e83765590f1447b
  montana =loadImage("montanas.png");
  m = new mount(montana, 0);

  terrenoN= loadImage("terrenonie.jpg");
  t = new terreno(terrenoN, 0);
<<<<<<< HEAD
  moto=loadImage("moto170.png");
  cam = new Cam(moto,0,200,170,160);
}
void draw() {
  background(#4BBBFF);
  c.display();
  m.display();
  t.display();
  cam.display();
=======
}
void draw() {
  background(#16A6B4);
  c.display();
  m.display();
  t.display();
  
>>>>>>> 175b21087460f803fa25f7778e83765590f1447b
  
}
