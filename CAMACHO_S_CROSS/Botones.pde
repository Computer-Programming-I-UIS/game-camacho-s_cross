class Botones {

  //Atributos
  int x;  //coordenada en x del botón
  int y;  //coordenada en y del botón
  int alto; //alto del botón
  int ancho; //ancho del botón
  int borde; //borde del botón
  color n=0; 
  color col;

  Botones(int _x, int _y, int _ancho, int _alto, int _borde, color _col) {  //constructor de las barras
    x = _x;
    y = _y;
    ancho = _ancho;
    alto= _alto;
    borde= _borde;
    col= _col;
  } 

  void display() {  
    
  /*  fill(col);
    rect(x, y, ancho, alto, borde);*/
    Start();
    Player();
    Options();
  }
  
  void Start() {      //método para la funcion del boton color, posición 0 en el array
    fill(b1);
    rect(x, y, ancho, alto, borde);
    for (int a = 0; a<btn.length-1; a++) {
      if ((mouseX>btn[0].x) && (mouseX<btn[0].x+ancho) && (mouseY>btn[0].y) && (mouseY<btn[0].y+alto)) {
        b1=255;
        n1=0;
      }
      else{
        b1=0;
        n1=255;
      }
    }
  }
  void Player() {  
    fill(b2);
    rect(x, y, ancho, alto, borde);
    for (int a = 0; a<btn.length-1; a++) {
      if ((mouseX>btn[1].x) && (mouseX<btn[1].x+ancho) && (mouseY>btn[1].y) && (mouseY<btn[1].y+alto)  ) {
        b2=255;
        n2=0;
      }
      else{
        b2=0;
        n2=255;
      }
    }
  }
  void Options() {    //método para la funcion del boton linea, posición 2 en el array
    fill(b3);
    rect(x, y, ancho, alto, borde);
    for (int a = 0; a<btn.length-1; a++) {
      if ((mouseX>btn[2].x) && (mouseX<btn[2].x+ancho) && (mouseY>btn[2].y) && (mouseY<btn[2].y+alto)  ) {
        b3=255;
        n3=0;
      }
      else{
        b3=0;
        n3=255;
      }
    }
  }
}
