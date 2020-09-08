class edific {//clase para las montañas
  //atributos
  float y; //coordenada en y
  int x=width, x2=2*width;//coordenada en x
  float v=20;//velocidad

  //constructor
  edific(PImage ED, float Y) {

    y = Y;
    edificios = ED;
  }
  //metodo
  void display() {
    //direccion de movimiento
    x-=v;
    x2-=v;
    //dibujan las montañas
    image(edificios, x, y,width+10,edificios.height);
    image(edificios, x2, y,width+10,edificios.height);
    //condicion para que se repitan 
    //if ( x+edificios.width <=  0&& puntaje<=18) {
    //  x = width;
    //}
    //if (x2+edificios.width <=0&& puntaje<=18) {
    //  x2=width;
    //}
   // println(x2+montana.width);
  }
}
