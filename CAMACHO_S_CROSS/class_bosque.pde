class bosq {//clase para el terreno
  //atributos
  float y; //coordenada en y
  float yr =280;
  int E =1000;
  int x=width, x2=2*width, xr=2*width, xr2=xr+E;//coordenada en x de la carretera y los carros
  float v=23, vr=22;//velocidad
  
  //constructor
  bosq(PImage B, float Y) {

    y = Y;
    bosque = B;
  }
  //metodo
  void display() {                     
    //direccion de movimiento
    x-=v;
    x2-=v;
    xr-=vr;
    xr2-=vr;
    //dibujan el terrenoy auto
    image(bosque, x, y,width+100,bosque.height+160);
    image(bosque, x2, y,width+100,bosque.height+160);
    image(roca,xr,272);
    image(roca,xr2,272);
    
    //condicion para que se repitan 
    if ( x+bosque.width+345<=  0) {
      x = width;
    }
    
    if (x2+bosque.width+345<=0) {
      x2=width;
    }
    if (x<=0) {
      cra.y=600;
    }
    if ( xr+roca.width<=  0 ) {
      xr =int(random(width, width+(width/2)-xr+roca.width));
    } 
    //if(xr<=0){
    //  terrenoN.height=0;}
    else if (xr2+roca.width <=0) {
      xr2=int(random(width+(width/2), 2*width));
    }

    //condicion para las colisiones del auto 
    if ((((yr<=(cam.y1)+cam.alto-20 ))&& (((cam.x1 >=xr-cam.ancho+77) && (cam.x1 <= (xr)+cam.ancho-35)) ||((cam.x1 >=xr2-cam.ancho+77) && (cam.x1 <= (xr2)+cam.ancho-35))))) {
      puntaje-=1;//puntaje disminuye
      opcion=4;//sucede el caso 4
      audjuego.pause();//audio del juego pausa

      if (puntaje > puntaje_max) puntaje_max = puntaje;//condicion para que se guarde el mayor puntaje
      setup();//reinicia juego
    }
   //if (puntaje>=20 && (m.x2+ montana.width) <= 0 && (m.x+ montana.width) <= 0 && x1<=0) {
     println(yr);
  }
}
