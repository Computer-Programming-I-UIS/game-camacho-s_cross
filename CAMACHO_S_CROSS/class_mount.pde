class mount {

  //float x;
  float y;
  PImage montana;

  //constructor
  mount(PImage M, float Y) {
    //x = X;
    y = Y;
    montana = M;
  }
  void display() {

    int x = 3*frameCount % width+montana.width;
    image(montana, -x+width+320, y+80, width+10, montana.height+60);
    image(montana, -x+width+1020, y+80, width+10, montana.height+60);
  }
}
