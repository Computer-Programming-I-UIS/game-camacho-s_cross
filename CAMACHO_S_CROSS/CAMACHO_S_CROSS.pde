cloud c;
mount m;
terreno t;
PImage nubes, montana, terrenoN;
void setup() {

  size(1000, 500);
  nubes =loadImage("nube3.png");
  c = new cloud(nubes,0);


  montana =loadImage("montanas.png");
  m = new mount(montana, 0);

  terrenoN= loadImage("terrenonie.jpg");
  t = new terreno(terrenoN, 0);
}
void draw() {
  background(#16A6B4);
  c.display();
  m.display();
  t.display();
  
  
}
