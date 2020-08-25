class cloud {

  //float x;
  float y;
  PImage nubes;
  int x, x2;
  int v=4;

  //constructor
  cloud(PImage N, float Y) {
    //x = X;
    y = Y;
    nubes = N;
  }
  void display() {


    x = v*frameCount % (width+300+nubes.width)+nubes.width;
    image(nubes, -x+width+300+nubes.width, y);
    //image(nubes, x, y);

    x2 = v*frameCount% (width+nubes.width)+nubes.width+600;
    image(nubes, -x2+nubes.width+1600, y+34);
  }
}
