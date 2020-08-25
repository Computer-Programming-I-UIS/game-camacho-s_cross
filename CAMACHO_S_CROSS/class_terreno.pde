class terreno {

  //float x;
  float y;
  PImage terrenoN;
  int v =8;
  int x;

  //constructor
  terreno(PImage T, float Y) {
    //x = X;
    y = Y;
    terrenoN = T;
  }
  void display() {

     x = v*frameCount % width+terrenoN.width;
    image(terrenoN, -x+width-396, y+285, width, height/2.1);
    image(terrenoN, -x+width+600, y+285, width, height/2.1);
  }
}
