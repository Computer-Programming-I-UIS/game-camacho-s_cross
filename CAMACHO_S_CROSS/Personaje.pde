class Cam {//clase para la moto
  //atributos
  PImage moto;
  //
  int ancho=170, alto=160, x, y, x1, y1, count, salto=10;

  //constructor
  Cam(PImage _moto, int _x1, int _y1, int _ancho, int _alto) {
    moto=_moto;
    x1=_x1; 
    y1=_y1;
    ancho=_ancho;
    alto=_alto;
  }
  //metodos
  void display() {
    movimiento();
  }
  //Control del salto(físico y audio)
  void movimiento() {  
    boolean saltando = keyPressed == true &&  key==CODED && keyCode == UP && y1==250;
    if (saltando)
    {      
      control=1;
      salto=17;
      if (audsalto.isPlaying()) {
        audsalto.rewind();
      } else {
        audsalto.rewind(); //reproduce el audio cada vez que el jugador salta
        audsalto.play();
      }
      puntaje+=1;
    }
    //control de la opcion de bajar mientras esta en el aire
    boolean bajar = keyPressed == true &&  key==CODED && keyCode == DOWN;
    if (bajar)
    {
      y1=250;
    }
    //sprite para andar
    if (control==1 && y1<=250) { 
      //Sprites
      image(jump, x1, y1);
      delay(5);
      //Salto
      y1-=salto;
      salto-=1;
    } else {  //Manejo
      x=(count%3)*ancho;
      y=(count/3)*ancho;
      if (y1-salto<250) {
        salto=0;
      }
      if (y1>250) {
        salto=0;
        y1=250;
        control=0;
      }
      copy(moto, x, y, ancho, alto, x1, y1, ancho, alto);
      count++;
      delay(40);
      if (count==3) {
        count=0;
      }
    }
  }
}
