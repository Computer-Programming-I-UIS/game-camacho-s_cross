class cloud {

  //float x;
  float y;
  PImage nubes;
  int x,x2;

  //constructor
  cloud(PImage N,float Y) {
    //x = X;
    y = Y;
    nubes = N;
  }
  void display() {

     x = 4*frameCount % (width+300+nubes.width)+nubes.width;
    image(nubes, -x+width+300+nubes.width, y);
    //image(nubes, x, y);
    
    x2 = 4*frameCount% (width+nubes.width)+nubes.width+600;
    image(nubes, -x2+nubes.width+1600, y+34);
  }
}
