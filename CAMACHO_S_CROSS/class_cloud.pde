class cloud {

  //float x;
  float y;
  PImage nubes;

  //constructor
  cloud(PImage N, float Y) {
    //x = X;
    y = Y;
    nubes = N;
  }
  void display() {

    int x = 3*frameCount % width+300+nubes.width;
    image(nubes, -x+width+300, y);

    int x2 = 3*frameCount% (590+nubes.width)+nubes.width;
    image(nubes, -x2+nubes.width+600, y+34);
  }
}
