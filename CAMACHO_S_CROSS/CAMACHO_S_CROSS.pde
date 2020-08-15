cloud c;
mount m;
PImage nubes, montana;
void setup() {

  size(700, 500);
  nubes =loadImage("nube3.png");
  c = new cloud(nubes, 0);

  montana =loadImage("montanas.png");
  m = new mount(montana, 0);
}
void draw() {
  background(#8AC5CB);
  c.display();
  m.display();
}
