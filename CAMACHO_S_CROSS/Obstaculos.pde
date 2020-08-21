class Obst {

  PImage obst;
  float  y;
  float[] x = new float [1000];




  Obst(PImage _obst, int _y) {
    obst = _obst;
    //x = _x;
    y =_y;
  }
  void display() {
    for (int i = 0; i < x.length; i++) {     
      x[i] -= 20;
      float E = 600*i;
      image(obst, E+x[i]+width, y);

    }
  }
}
