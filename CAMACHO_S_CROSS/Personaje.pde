class Cam {//clase para la moto
  //atributos
  int ancho=170, alto=160, x, y, x1, y1, count, salto=10;

  //constructor
  Cam(int _x1, int _y1, int _ancho, int _alto) {
    x1=_x1; 
    y1=_y1;
    ancho=_ancho;
    alto=_alto;
  }
  //metodos
  void display() {
    movimiento();
  }
  //Control del salto(físico y audio)
  void movimiento() {  
    boolean saltando = keyPressed == true &&  key==CODED && keyCode == UP && y1==250;
    if (saltando)
    {      
      control=1;
      salto=17;
      if (efectos==true) {
        if (audsalto.isPlaying()) {
          audsalto.rewind();
        } else {
          audsalto.rewind(); //reproduce el audio cada vez que el jugador salta
          audsalto.play();
        }
      } 
      if (efectos==false) {
        audsalto.pause();
      }
      puntaje+=1;
    }
    //control de la opcion de bajar mientras esta en el aire
    boolean bajar = keyPressed == true &&  key==CODED && keyCode == DOWN;
    if (bajar)
    {
      y1=250;
    }
    //sprite para andar
    if (control==1 && y1<=250) { 
      //Sprites
      switch(slt) {
      case 0:
      image(sltrojo, x1, y1);
      break;
      case 1:
      image(sltverde, x1, y1);
      break;
      case 2:
      image(sltazul, x1, y1);
      break;
      case 3:
      image(sltnegro, x1, y1);
      break;
      }
      
      delay(5);
      //Salto
      y1-=salto;
      salto-=1;
    } else {  //Manejo
      x=(count%3)*ancho;
      y=(count/3)*ancho;
      if (y1-salto<250) {
        salto=0;
      }
      if (y1>250) {
        salto=0;
        y1=250;
        control=0;
      }
      switch(img) {
      case 0:
      copy(mtroja, x, y, ancho, alto, x1, y1, ancho, alto);
      break;
      case 1:
      copy(mtverde, x, y, ancho, alto, x1, y1, ancho, alto);
      break;
      case 2:
      copy(mtazul, x, y, ancho, alto, x1, y1, ancho, alto);
      break;
      case 3:
      copy(mtnegra, x, y, ancho, alto, x1, y1, ancho, alto);
      break;
      }
      count++;
      delay(40);
      if (count==3) {
        count=0;
      }
    }
  }
}

void seleccion() {  //Selección del personaje
  switch(select) {
  case 0:
    fill(0);
    textSize(40);
    text("Elije tu personaje", 350, 100);
    image(sltrojo, 100, 150);
    image(sltverde, 300, 150);
    image(sltazul, 500, 150);
    image(sltnegro, 700, 150);
    fill(b1, cte1);
    rect(100, 150, 170, 160, 5);
    fill(b1, cte2);
    rect(300, 150, 170, 160, 5);
    fill(b1, cte3);
    rect(500, 150, 170, 160, 5);
    fill(b1, cte4);
    rect(700, 150, 170, 160, 5);
    //al hacer click el color de los botones se invierte 

    if ((mouseX>100) && (mouseX<100+170) && (mouseY>150) && (mouseY<150+160)) {
      cte1=200;
    } else {
      cte1=10;
    }
    if ((mouseX>300) && (mouseX<300+170) && (mouseY>150) && (mouseY<150+160)) {
      cte2=200;
    } else {
      cte2=10;
    }
    if ((mouseX>500) && (mouseX<500+170) && (mouseY>150) && (mouseY<150+160)) {
      cte3=200;
    } else {
      cte3=10;
    }
    if ((mouseX>700) && (mouseX<700+170) && (mouseY>150) && (mouseY<150+160)) {
      cte4=200;
    } else {
      cte4=10;
    }
    if ((mouseX>100) && (mouseX<100+170) && (mouseY>150) && (mouseY<150+160) && (mousePressed==true)) {
      slt=0;
      img=0;
      select = 1;
    }
    if ((mouseX>300) && (mouseX<300+170) && (mouseY>150) && (mouseY<150+160) && (mousePressed==true)) {
      slt=1;
      img=1;
      select = 1;
    }
    if ((mouseX>500) && (mouseX<500+170) && (mouseY>150) && (mouseY<150+160) && (mousePressed==true)) {
      slt=2;
      img=2;
      select = 1;
    }
    if ((mouseX>700) && (mouseX<700+170) && (mouseY>150) && (mouseY<150+160) && (mousePressed==true)) {
      slt=3;
      img=3;
      select = 1;
    }
    //al hacer click el color de los botones se invierte y regresa a la pestaña anterior
    if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50)) {
      l=255;
      n2=0;
    } else {
      l=0;
      n2=255;
    }
    if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50) && (mousePressed==true)) {
      opc = 0;
      delay(150);
    }
    fill(l, 160);
    rect(10, 430, 100, 50, 5);
    fill(n2);
    textSize(30);
    text("Atrás", 25, 465);
    //al hacer click el color de los botones se invierte y regresa a la pestaña anterior
    if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50)) {
      l=255;
      n2=0;
    } else {
      l=0;
      n2=255;
    }
    if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50) && (mousePressed==true)) {
      opcion = 0;
      delay(150);
    }
    break;
  case 1:
    c.display();
    m.display();
    t.display();
    cam.display();
    ob.display();
    puntaje();
    audjuego.play();
    audmenu.pause();
    if (musica==false) {
      audjuego.pause();
    }
  }
}
