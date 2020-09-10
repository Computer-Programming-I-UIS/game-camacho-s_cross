class Obst { //clase para los obstaculos
  //atributos
  PImage obst; //variable de imagen de obstaculos
  int  y;//coordenada y
  int E =1000;//espacio entre la posicion inicial de los obbstaculos
  int x = width;//coordenada x del primer obstaculo
  int x1 = width+E;//coordenada x del segundo obstaculo
  float v =17,v1=25;//velocidad de los obstaculos
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
    x1 -=v1;
    //dibujar los obstaculos
    image(obst, x, y, ancho, alto);  
    image(ski, x1, y+10, ancho, alto-30);
    //condicion para que se repitan los obstaculos cuando llegan a cero en posiciones random
    if ( x+ancho<=  0 && puntaje<9) {
      x =int(random(width, width+(width/2)-ob.ancho));
      //x=2*width;
    } else if (x1+ancho <=0 && puntaje<=8) {
      x1=int(random(width+(width/2), 2*width));
      //x1=2*width;
    }
    //condicion para las colisiones 
    if ((((y<=(cam.y1)+cam.alto-50 ))&& (((cam.x1 >=x-cam.ancho+85) && (cam.x1 <= (x)+cam.ancho-119)) ||((cam.x1 >=x1-cam.ancho+50) && (cam.x1 <= (x1)+cam.ancho-119))))) {
      puntaje-=1;//puntaje disminuye
      opcion=4;//sucede el caso 4
      audjuego.pause();//audio del juego pausa

      if (puntaje > puntaje_max) puntaje_max = puntaje;//condicion para que se guarde el mayor puntaje
      setup();//reinicia juego
    }
    if (x1>=x && x1<=x+ancho-50) {
      v1=v;}
      else{
        v1=25;
    }
    //condicion para que aumente la velocidad cada vez que el puntaje sea de 10 en 10
    if ( puntaje %5 == 0 && puntaje != 0) {
      c.v+=0.2; //velocidad nube aumenta
      t.v+=0.2;//velocidad terreno aumenta
      m.v+=0.1;//velocidad montaña aumenta
    }
    if (puntaje>=9 && (m.x2+ montana.width) <= 0 && (m.x+ montana.width) <= 0 && x1<=0 && x<=0) { 
     //if(puntaje>=1){
      t.y=16;
      opcion=5;
      //opcion=6;
    }
  }
}
