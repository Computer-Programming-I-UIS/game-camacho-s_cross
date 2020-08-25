void Sonido() {
  fill(0);
  textSize(80);
  text("Sonido", 250, 140); 
  if (sonid==true) {
    image(sn1, 500, 100);
  } else {
    image(sn2, 500, 100);
  }

  if ((mouseX>500) && (mouseX<500+80) && (mouseY>100) && (mouseY<100+45) && (mousePressed==true)) {
    sonid=false;
  } else {
    sonid=true;
  }
  fill(l, 160);
  rect(10, 430, 100, 50, 5);
  fill(n2);
  textSize(30);
  text("Atrás", 25, 465);
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50)) {
    l=255;
    n2=0;
  } else {
    l=0;
    n2=255;
  }
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50) && (mousePressed==true)) {
    opcion = 0;
  }
}

void opciones() {
  fill(0);
  textSize(80);
  text("Opciones", 400, 70); 
  switch (opc) {
  case 0:
    fill(l, 160);
    rect(255, 100, 100, 50, 5);
    fill(n2);
    textSize(30);
    text("Ayuda", 250, 140);
    fill(l, 160);
    rect(255, 300, 100, 50, 5);
    fill(n2);
    textSize(30);
    text("Créditos", 250, 340);
  }
  fill(l, 160);
  rect(10, 430, 100, 50, 5);
  fill(n2);
  textSize(30);
  text("Atrás", 25, 465);
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50)) {
    l=255;
    n2=0;
  } else {
    l=0;
    n2=255;
  }
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50) && (mousePressed==true)) {
    opcion = 0;
  }
}

void perder() {
  image(fondo2, 0, 0);
  fill(0);
  textSize(80);
  text("Perdiste!", 300, 100);
  fill(b1, 160);
  rect(80, 165, 140, 60, 5);
  textSize(30);
  fill(n1);
  text("Reiniciar", 90, 205);
  if ((mouseX>80) && (mouseX<80+140) && (mouseY>165) && (mouseY<165+60)) {
    b1=255;
    n1=0;
  } else {
    b1=0;
    n1=255;
  }


  if ((mouseX>80) && (mouseX<80+140) && (mouseY>165) && (mouseY<165+60) && (mousePressed==true)) {

    opcion = 1;
  }

  fill(b2, 160);
  rect(80, 285, 140, 60, 5);
  textSize(30);
  fill(n2);
  text("Menú", 110, 325);
  if ((mouseX>80) && (mouseX<80+140) && (mouseY>285) && (mouseY<285+60)) {
    b2=255;
    n2=0;
  } else {
    b2=0;
    n2=255;
  }
  if ((mouseX>80) && (mouseX<80+140) && (mouseY>285) && (mouseY<285+60) && (mousePressed==true)) {
    opcion = 0;
  }
}
