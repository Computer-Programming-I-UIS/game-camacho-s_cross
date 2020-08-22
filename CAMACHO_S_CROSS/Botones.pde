class Botones {

  //Atributos
  int x;  //coordenada en x del botón
  int y;  //coordenada en y del botón
  int alto; //alto del botón
  int ancho; //ancho del botón
  int borde; //borde del botón 

  Botones(int _x, int _y, int _ancho, int _alto, int _borde) {  //constructor de los botones

    x= _x;
    y= _y;
    ancho= _ancho;
    alto= _alto;
    borde= _borde;
  } 

  void display() {  
    Start();
    Player();
    Options();
  }

  void Start() {      
    fill(b1);
    rect(x, y, ancho, alto, borde);
    fill(n1);
    textSize(30);
    text("Jugar", 740, 173);

      if ((mouseX>btn1.x) && (mouseX<btn1.x+ancho) && (mouseY>btn1.y) && (mouseY<btn1.y+alto)) {
        //b1=255;
        n1=0;
      } else {
        //b1=0;
        n1=255;
      }  
  }
  void Player() {  
    color m=255;
    fill(m);
    //rect(x, y, ancho, alto, borde);
    fill(n2);
    text("Opciones", 735, 303);
      if ((mouseX>btn2.x) && (mouseX<btn2.x+ancho) && (mouseY>btn2.y) && (mouseY<btn2.y+alto)  ) {
        m=255;
        n2=0;
      } else {
        m=0;
        n2=255;
      }
  }
  void Options() {    
    fill(b3);
    rect(x, y, ancho, alto, borde);
    fill(n3);
    text("Crédtos", 740, 435);
      if ((mouseX>btn3.x) && (mouseX<btn3.x+ancho) && (mouseY>btn3.y) && (mouseY<btn3.y+alto)  ) {
        //b3=255;
        n3=0;
      } else {
        //b3=0;
        n3=255;
      }
  }
}
