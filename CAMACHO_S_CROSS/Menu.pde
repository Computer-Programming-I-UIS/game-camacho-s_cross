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



void options() {

  switch (opc) {
  case 0:
    caso0();
    break;
  case 1:
    ayuda();
    break;
  case 2:
    creditos();
    break;
  }
}

void caso0() {
  fill(0);
  textSize(60);
  text("Opciones", 400, 70);
  fill(b1, 160);
  rect(425, 160, 130, 60, 5);//170, 60
  fill(n1);
  textSize(30);
  text("Ayuda", 440, 195);
  if ((mouseX>425) && (mouseX<425+130) && (mouseY>160) && (mouseY<160+60)) { 
    b1=255;
    n1=0;
  } else {
    b1=0;
    n1=255;
  }
  if ((mouseX>425) && (mouseX<425+130) && (mouseY>160) && (mouseY<160+60) && (mousePressed==true)) {
    opc = 1;
  }
  fill(b2, 160);
  rect(425, 300, 130, 60, 5);
  fill(n2);
  textSize(30);
  text("Créditos", 440, 340);
  if ((mouseX>425) && (mouseX<425+130) && (mouseY>300) && (mouseY<300+60)) { 
    b2=255;
    n2=0;
  } else {
    b2=0;
    n2=255;
  }
  if ((mouseX>425) && (mouseX<425+130) && (mouseY>300) && (mouseY<300+60) && (mousePressed==true)) {
    opc = 2;
  }
  fill(b3, 160);
  rect(10, 430, 100, 50, 5);
  fill(n3);
  textSize(30);
  text("Atrás", 25, 465);
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50)) {
    b3=255;
    n3=0;
  } else {
    b3=0;
    n3=255;
  }
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50) && (mousePressed==true)) {
    opcion = 0;
  }
}

void ayuda() {
  fill(0);
  textSize(50);
  text("Ayuda", 400, 70);
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
    opc = 0;
    delay(150);
  }
}

void creditos() {
  /* LOS SIGUIENTES LINKS PERMITEN ENCONTRAR CADA IMAGEN QUE UTILIZAMOS EN EL JUEGO
   clasificacion, https://videojuegos.fandom.com/es/wiki/Entertainment_Software_Rating_Board
   fondo, https://www.10wallpaper.com/es/view/Forest_Winter_Snow_Mountains_Pine_Tree.html
   snowman, https://www.cleanpng.com/png-snowman-christmas-trolls-animaatio-clip-art-sam-ha-4001147/ autor: Cisily
   Montañas, http://www.andinoclubpamir.cl/cropped-montanas-png/  autor: Posted by Carlos A. Gatica V.
   nubes,https://www.stickpng.com/es/img/naturaleza/nubes/pequena-nube-individual
   terreno,https://www.pngegg.com/en/png-niopa
   */
  fill(0);
  textSize(50);
  text("Créditos", 400, 70);
  fill(#1F2BFF);
  textSize(30);
  text("Creadores: Jesse Solomon Blair Camacho", 100, 150);
  text("           Sergio Andrés Angarita Camacho", 140, 200);
  fill(0);
  textSize(25);
  text("A continuación se refieren los derechos de autor de algunas imagenes utilizadas ", 30, 250);
  text("en nuestro juego (cuyo autor es conocido), por otra parte, las imagenes con autor ", 30, 280);
  text("desconocido se encuentran debidamente referenciadas en el código(pestaña Menu, línea 124).", 30, 310);
  text("Muñeco de nieve:   Cisily", 300, 360);
  text("Montañas:   Carlos A. Gatica V.", 300, 400);
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
    opc = 0;
    delay(150);
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
