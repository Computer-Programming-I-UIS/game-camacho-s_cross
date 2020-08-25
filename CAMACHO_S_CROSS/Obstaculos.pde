class Obst { //clase para los obstaculos
  //atributos
  PImage obst; //variable de imagen de obstaculos
  int  y;//coordenada y
  int E =1000;//espacio entre la posicion inicial de los obbstaculos
  int x = width;//coordenada x del primer obstaculo
  int x1 = width+E;//coordenada x del segundo obstaculo
  float v =17;//velocidad de los obstaculos
  int ancho, alto;//ancho y alto de obstaculos

  //constructor
  Obst(PImage _obst, int _y, int _ancho, int _alto) {
    obst = _obst;
    y =_y;
    ancho=_ancho;
    alto=_alto;
  }
  //metodo
  void display() {
    //direccion movimiento de obstaculos
    x -= v; 
    x1 -=v;
    //dibujar los obstaculos
    image(obst, x, y, ancho, alto);  
    image(obst, x1, y, ancho, alto);
    //condicion para que se repitan los obstaculos cuando llegan a cero en posiciones random
    if ( x+ancho<=  0) {
      x =int(random(width, 2*width));
    } else if (x1+ancho <=0) {
      x1=int(random(width, 2*width));
    }
    //condicion para las colisiones 
    if ((((y<=(cam.y1)+cam.alto-50 ))&& (((cam.x1 >=x+85-cam.ancho) && (cam.x1 <= (x)+cam.ancho-119)) ||((cam.x1 >=x1+85-cam.ancho) && (cam.x1 <= (x1)+cam.ancho-119))))) {
      puntaje-=1;//puntaje disminuye
      opcion=4;//sucede el caso 4
      audjuego.pause();//audio del juego pausa

      if (puntaje > puntaje_max) puntaje_max = puntaje;//condicion para que se guarde el mayor puntaje
      setup();//reinicia juego
    }
    //if ((x<=20 && x>=0) || (x1<=20 && x1>=0)) {
    //  puntaje+=1;
    //}

    //condicion para que aumente la velocidad cada vez que el puntaje sea de 10 en 10
    if ( puntaje %10 == 0 && puntaje != 0) {
      c.v+=0.3; //velocidad nube aumenta
      t.v=50;//velocidad terreno aumenta
      m.v+=0.1;//velocidad montaña aumenta
      v+=0.2;//velocidad obstaculo aumenta
    }
  }
}
