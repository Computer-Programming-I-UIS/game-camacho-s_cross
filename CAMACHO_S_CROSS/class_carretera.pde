class carret {//clase para el terreno
  //atributos
  float y; //coordenada en y
  float yc =280;
  int E =1000;
  int x=width, x2=2*width, xc=2*width, xc2=xc+E;//coordenada en x de la carretera y los carros
  float v=28, vc=25;//velocidad
  
  //constructor
  carret(PImage C, float Y) {

    y = Y;
    carretera = C;
  }
  //metodo
  void display() {                     
    //direccion de movimiento
    x-=v;
    x2-=v;
    xc-=vc;
    xc2-=vc;
    //dibujan el terrenoy auto
    image(carretera, x, y, 2*width, 200);
    image(carretera, x2, y, 2*width, 200);
    image(auto,xc,yc);
    image(auto,xc2,yc);
    
    //condicion para que se repitan 
    if ( (x+carretera.width)/2 <=  0) {
      x = width;
    }
    if (x<=0) {
      t2.y=600;
    }
    if ( xc+auto.width<=  0 && puntaje<=20) {
      xc =int(random(width, width+(width/2)-xc+auto.width));
    } 
    if(xc<=0){
      terrenoN.height=0;}
    else if (xc2+auto.width <=0 && puntaje <=20) {
      xc2=int(random(width+(width/2), 2*width));
    }

    if ((x2+carretera.width)/2 <=0) {
      x2=width;
    }
    //condicion para las colisiones del auto 
    if ((((yc+13<=(cam.y1)+cam.alto-30 ))&& (((cam.x1 >=xc-cam.ancho+70) && (cam.x1 <= (xc)+cam.ancho-30)) ||((cam.x1 >=xc2-cam.ancho+70) && (cam.x1 <= (xc2)+cam.ancho-30))))) {
      puntaje-=1;//puntaje disminuye
      opcion=4;//sucede el caso 4
      audjuego.pause();//audio del juego pausa

      if (puntaje > puntaje_max) puntaje_max = puntaje;//condicion para que se guarde el mayor puntaje
      setup();//reinicia juego
    }
       if (puntaje>=20 && (e.x2+ edificios.width) <= 0 && (e.x+ edificios.width) <= 0 && xc2<=0) { 
     //if(puntaje>=1){
      y=320;
      opcion=6;
    }
  }
}
