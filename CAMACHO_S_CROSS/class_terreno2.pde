class terreno2 {//clase para el terreno
  float y; //coordenada en y
  int x=width, x2=2*width;//coordenada en x
  float v=26;//velocidad

  //constructor
  terreno2(PImage D, float Y) {

    y = Y;
    desert = D;
  }
   //metodo
  void display() {                     
    //direccion de movimiento
    x-=v;
    x2-=v;
    //dibujan el terreno

    image(desert, x, y+180, width+50, height+150);
    image(desert1, x2,y+180, width+50, height+150);
    //condicion para que se repitan 
    if ( (x+desert.width-100)/2 <=  0) {
      x = width;}
      //if(x<=0){
      //terrenoN.height=0;}
    
    if (x2+desert1.width-100 <=0) {
      x2=width;
    }


  }

}
