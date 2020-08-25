void botones() {  //metodo de los botones del menú
  Start();
  sonido();
  opciones();
}

void Start() {      //metodo para empezar a jugar
  fill(b1, 160);
  rect(650, 135, 250, 70, 5);
  fill(n1);
  textSize(30);
  text("Jugar", 740, 173);
  //al hacer click el color de los botones se invierte y empieza a jugar
  if ((mouseX>650)& (mouseX<900) && (mouseY>135) && (mouseY<205)) {
    b1=255;
    n1=0;
  } else {
    b1=0;
    n1=255;
  }
  if ((mouseX>650)& (mouseX<900) && (mouseY>135) && (mouseY<205) && (mousePressed==true)) {
    opcion = 1;
  }
}
void sonido() {  //metodo para entrar en las opciones de sonido
  fill(b2, 160);
  rect(650, 265, 250, 70, 5);
  fill(n2);
  text("Sonido", 735, 303);
  //al hacer click el color de los botones se invierte y entra en las opciones de sonido
  if ((mouseX>650) && (mouseX<900) && (mouseY>265) && (mouseY<335)) {
    b2=255;
    n2=0;
  } else {
    b2=0;
    n2=255;
  }
  if ((mouseX>650) && (mouseX<900) && (mouseY>265) && (mouseY<335) && (mousePressed==true)) {
    opcion = 2;
  }
}
void opciones() {    //metodo para entrar en las opciones del juego
  fill(b3, 160);
  rect(650, 395, 250, 70, 5);
  fill(n3);
  text("Opciones", 740, 435);
  //al hacer click el color de los botones se invierte y entra en las opciones del juego
  if ((mouseX>650) && (mouseX<900) && (mouseY>395) && (mouseY<465)) {
    b3=255;
    n3=0;
  } else {
    b3=0;
    n3=255;
  }
  if ((mouseX>650) && (mouseX<900) && (mouseY>395) && (mouseY<465) && (mousePressed==true)) {
    opcion = 3;
  }
}
