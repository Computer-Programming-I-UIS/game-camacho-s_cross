class Obst {

  PImage obst;
  float  y;
  float[] x = new float [1500];
  float E;
  float xpos;
  float test;
  float v = 20 ;
  Obst(PImage _obst, int _y) {
    obst = _obst;
    //x = _x;
    y =_y;
  }
  void display() {
    for (int i = 0; i < x.length; i++) { 

      x[i] -= v;
      E = 1000*i;
      xpos = E+x[i]+width;
      image(obst, xpos, y);

      if ((((y<=(cam.y1)+cam.alto-50 ))&& (cam.x1 >=xpos+60-cam.ancho) && (cam.x1 <= (xpos)+cam.ancho-100))) {

        opcion=4;

        audjuego.pause();
        if (puntaje > puntaje_max) puntaje_max = puntaje;
        setup();
      }

      if ( puntaje %2 ==0 && puntaje != 0) {
        c.v=8;
        t.v=11;
        m.v=8;
        x[i]-=15;
        //  //puntaje = (puntaje+1);
      }
      println(cam.y1+cam.ancho);
    }
  }
}
