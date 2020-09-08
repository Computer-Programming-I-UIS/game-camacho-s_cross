
class terreno {//clase para el terreno
  //atributos
  float y; //coordenada en y
  int x=0, x2=width;//coordenada en x
  float v=8;//velocidad


  //constructor
  terreno(PImage T, float Y) {

    y = Y;
    terrenoN = T;

  }
  //metodo
  void display() {                     
    //direccion de movimiento
    x-=v;
    x2-=v;
    //dibujan el terreno
    image(terrenoN, x, y+285,2*width, height/2.1);
    image(terrenoN, x2, y+285,width+70, height/2.1);
    //condicion para que se repitan 
    if ( (x+terrenoN.width+400)/2 <=  0) {
      x = width;
    }
    if (x2+terrenoN.width+400 <=0) {
      x2=width;     
    }


  }

}
