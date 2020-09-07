class cacts { //clase para los cactus
  //atributos
  PImage cactus; //variable de imagen de cactus
  int  y;//coordenada y
  int E =1000;//espacio entre la posicion inicial de los cactus
  int x = 2*width;//coordenada x del primer cactus
  int x1 = x+E;//coordenada x del segundo cactus
  float v =24;//velocidad de los cactus
  int ancho, alto;//ancho y alto de cactus

  //constructor
  cacts(PImage _cactus, int _y, int _ancho, int _alto) {
    cactus = _cactus;
    y =_y;
    ancho=_ancho;
    alto=_alto;
  }
  //metodo
  void display() {
    //direccion movimiento de cactus
    x -= v; 
    x1 -=v;
    //dibujar los cactus
    image(cactus, x, y, ancho, alto);  
    image(cactus, x1, y, ancho, alto);
    //condicion para que se repitan los cactus cuando llegan a cero en posiciones random
    if ( x+ancho<=  0 && puntaje <=20) {
      x =int(random(width, 2*width));
    } else if (x1+ancho <=0 && puntaje <=20) {
      x1=int(random(width, 2*width));
    }
    //condicion para las colisiones 
    if ((((y<=(cam.y1)+cam.alto-30 ))&& (((cam.x1 >=x+70-cam.ancho) && (cam.x1 <= (x)+cam.ancho-30)) ||((cam.x1 >=x1+70-cam.ancho) && (cam.x1 <= (x1)+cam.ancho-30))))) {
      puntaje-=1;//puntaje disminuye
      opcion=4;//sucede el caso 4
      audjuego.pause();//audio del juego pausa

      if (puntaje > puntaje_max) puntaje_max = puntaje;//condicion para que se guarde el mayor puntaje
      setup();//reinicia juego
    }
    //condicion para que aumente la velocidad cada vez que el puntaje sea de 10 en 10
    if ( puntaje %10 == 0 && puntaje != 0) {
      //c.v+=0.3; //velocidad nube aumenta
      //t2.v+=0.3;//velocidad terreno aumenta
      //m.v+=0.1;//velocidad montaña aumenta
      v+=0.2;//velocidad obstaculo aumenta
    }
        if(puntaje>=20 && x<=0 && x1<=0){
          //t2.y=130 ;
          opcion=6;}
  }
}
