class mount {//clase para las montañas
  //atributos
  float y; //coordenada en y
  int x=0, x2=width;//coordenada en x
  float v=5;//velocidad

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
    if ( x+montana.width <=  0) {
      x = width;
    }
    if (x2+montana.width <=0) {
      x2=width;
    }
  }
}
//class mount {

//  //float x;
//  float y;
//  PImage montana;
//  int x1;
//  int v=8;

//  //constructor
//  mount(PImage M, float Y) {
//    //x = X;
//    y = Y;
//    montana = M;
//  }
//  void display() {

//    x1 = v*frameCount % width+montana.width;
//    image(montana, -x1+width+20, y+80, width+10, montana.height+65);

//    image(montana, -x1+width+1020, y+80, width+10, montana.height+65);
//  }
//}
