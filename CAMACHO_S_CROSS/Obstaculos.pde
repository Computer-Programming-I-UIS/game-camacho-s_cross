class Obst {

  PImage obst;
  float  y;
  float[] x = new float [1500];

  Obst(PImage _obst, int _y) {
    obst = _obst;
    //x = _x;
    y =_y;
  }
  void display() {
    for (int i = 0; i < x.length; i++) {     
      x[i] -= 20;
      float E = 1000*i;
      image(obst, E+x[i]+width, y);
      if (cam.y1 != 0) {
        println(cam.y1);
      }
      if ((((y<=(cam.y1)+cam.alto-50 ))&& (cam.x1 >=E+x[i]+width+60-cam.ancho) && (cam.x1 <= (E+x[i]+width)+cam.ancho-100))) {
        opcion=0;
      }
      else if (E+x[i]+width==0){
     puntaje = (puntaje+1);
    }
    }
  }
}
