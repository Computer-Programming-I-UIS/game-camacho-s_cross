class cloud {//clase para las nubes
  //atributos
  float y; //coordenada en y
  PImage nubes;//variable de la imagen
  int E=150;//espacio entre posicion en x
  int x=width, x2=width+E; //coordenadas en x de las nubes
  float v=10;//velocidad



  //constructor
  cloud(PImage N, float Y) {

    y = Y;
    nubes = N;
  }
  //metodo de la clase
  void display() {
    //direccion de moviento de las nubes
    x-=v;
    x2-=v;
    //dibujan las nubes
    image(nubes, x, y);
    image(nubes, x2, y+34);
    //condicion para que se repiten
    if ( x+nubes.width <=  0) {
      x =width;
    } else if (x2+nubes.width <=0) {
      x2=width;
    }
  }
}
