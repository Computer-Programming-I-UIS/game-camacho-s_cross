class Cam {

  PImage moto;
  int ancho=170, alto=160, x, y, x1, y1, count;

  Cam(PImage _moto, int _x1, int _y1, int _ancho, int _alto) {
    moto=_moto;
    x1=_x1;
    y1=_y1;
    ancho=_ancho;
    alto=_alto;
  }

  void display() {
    x=(count%3)*ancho;
    y=(count/3)*ancho;

    copy(moto, x, y, ancho, alto, x1, y1, ancho, alto);
    count++;
    delay(300);
    if (count==3) {
      count=0;
    }
  }
}
