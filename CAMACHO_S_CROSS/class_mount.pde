class mount {//clase para las montañas
  //atributos
  float y; //coordenada en y
  int x=0, x2=width;//coordenada en x
  float v=17;//velocidad

  //constructor
  mount(PImage M, float Y) {

    y = Y;
    montana = M;
  }
  //metodo
  void display() {
    //direccion de movimiento
    x-=v;
    x2-=v;
    //dibujan las montañas
    image(montana, x, y+80, width+20, montana.height+65);
    image(montana, x2, y+80, width+60, montana.height+65);
    //condicion para que se repitan 
  //  if ( x+montana.width <=  0 && puntaje<=7) {
  //    x = width;
  //  }
  //  if (x2+montana.width <=0 && puntaje<=7) {
  //    x2=width;
  //  }
  //  //println(x2+montana.width);
  }
}
