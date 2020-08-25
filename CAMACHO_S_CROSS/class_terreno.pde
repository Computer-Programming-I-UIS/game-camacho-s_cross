class terreno {//clase para el terreno
  //atributos
  float y; //coorednada y
  int v =8;//velocidad
  int x;//coordenada en x

  //constructor
  terreno(PImage T, float Y) {
    y = Y;
    terrenoN = T;
  }
  //metodo
  void display() {
    x = v*frameCount % width+terrenoN.width;//posicion en x del terreno
    //dibuja el terreno
    image(terrenoN, -x+width-396, y+285, width, height/2.1);
    image(terrenoN, -x+width+600, y+285, width, height/2.1);
  }
}
