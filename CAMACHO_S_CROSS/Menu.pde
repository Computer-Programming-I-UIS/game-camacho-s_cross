void Sonido() {//metodo para cambiar las opciones de sonido
  //sonido de musica
  fill(0);
  textSize(60);
  text("Sonido", 400, 70); 
  textSize(40);
  text("Música", 250, 240);
  if (musica==true) {
    image(sn1, 400, 200);//imagen para sonido activado
  } else {
    image(sn2, 400, 200);//imagen para sonido desactivado
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
  }
  //Sonido de efectos
  fill(0);
  textSize(40);
  text("Efectos", 250, 340); 
  if (efectos==true) {
    image(sn1, 400, 300);//imagen para sonido activado
  } else {
    image(sn2, 400, 300);//imagen para sonido desactivado
  }

}
void mouseClicked() {//cambia la variable que controla el sonido
  if ((mouseX>400) && (mouseX<400+80) && (mouseY>200) && (mouseY<200+45) ) {
    musica=!musica;
  }
  if ((mouseX>400) && (mouseX<400+80) && (mouseY>300) && (mouseY<300+45) ) {
    efectos=!efectos;
  }
}

void options() { //hay dos opciones para escojer y el caso 0

  switch (opc) {
    //opciones
  case 0:
    caso0();
    break;
    //ayuda
  case 1:
    ayuda();
    break;
  case 2:
    //créditos
    creditos();
    break;
  }
}

void caso0() { //realiza el caso 0, muestra en pantalla las opciones
  fill(0);
  textSize(60);
  text("Opciones", 400, 70);
  fill(b1, 160);
  rect(425, 160, 130, 60, 5);//170, 60
  fill(n1);
  textSize(30);
  text("Ayuda", 440, 195);
  //al hacer click el color de los botones se invierte y entra en la ayuda
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
  //al hacer click el color de los botones se invierte y entra en los créditos
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
  //al hacer click el color de los botones se invierte y regresa a la pestaña anterior
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

void ayuda() { //ejecuta la ayuda, una breve explicaión interactiva de los controles del juego
  fill(0);
  textSize(50);
  text("Ayuda", 400, 70);
  fill(0);
  textSize(30);
  //Mensajes de los controles del juego
  text("Oprime el botón de flecha ", 30, 150);
  text("hacia arriba para saltar", 30, 190);
  text("Mientras estas en el aire ", 600, 150);
  text("tambien puedes bajar oprimiendo ", 600, 190);
  text("el bóton de flecha hacia abajo", 600, 230);
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
    opc = 0;
    delay(150);
  }
  //Explicaión interactiva de los controles del juego
  //Control del salto(físico y audio)
  boolean saltando = keyPressed == true &&  key==CODED && keyCode == UP && cam.y1==250;
  if (saltando)
  {      
    control=1;
    cam.salto=17;
    if (audsalto.isPlaying()) {
      audsalto.rewind();
    } else {
      audsalto.rewind();//reproduce el audio cada vez que el jugador salta
      audsalto.play();
    }
  }
  //control de la opcion de bajar mientras esta en el aire
  boolean bajar = keyPressed == true &&  key==CODED && keyCode == DOWN;
  if (bajar)
  {
    cam.y1=250;
  }
  //sprite para andar
  if (control==1 && cam.y1<=250) { 
    //Sprites
    image(jump, 400, cam.y1);
    delay(5);

    //Salto
    cam.y1-=cam.salto;
    cam.salto-=1;
  } else {  //Manejo
    cam.x=(cam.count%3)*cam.ancho;
    cam.y=(cam.count/3)*cam.ancho;
    if (cam.y1-cam.salto<250) {
      cam.salto=0;
    }
    if (cam.y1>250) {
      cam.salto=0;
      cam.y1=250;
      control=0;
    }
    copy(moto, cam.x, cam.y, cam.ancho, cam.alto, 400, cam.y1, cam.ancho, cam.alto);//cargar el sprite
    cam.count++;
    delay(40);
    if (cam.count==3) {
      cam.count=0;
    }
  }
}

void creditos() { //Créditos
  /* LOS SIGUIENTES LINKS PERMITEN ENCONTRAR CADA IMAGEN Y AUDIO QUE UTILIZAMOS EN EL JUEGO
   IMAGENES
   clasificacion, https://videojuegos.fandom.com/es/wiki/Entertainment_Software_Rating_Board
   fondo, https://www.10wallpaper.com/es/view/Forest_Winter_Snow_Mountains_Pine_Tree.html
   snowman, https://www.cleanpng.com/png-snowman-christmas-trolls-animaatio-clip-art-sam-ha-4001147/ autor: Cisily
   Montañas, http://www.andinoclubpamir.cl/cropped-montanas-png/  autor: Posted by Carlos A. Gatica V.
   nubes,https://www.stickpng.com/es/img/naturaleza/nubes/pequena-nube-individual
   terreno,https://www.pngegg.com/en/png-niopa
   AUDIOS
   menu, https://www.youtube.com/watch?v=jw7qC2aPfos
   juego, https://www.youtube.com/watch?v=6LB7LZZGpkw&feature=youtu.be
   perder, https://www.youtube.com/watch?v=qFriJcjK160
   salto, https://www.youtube.com/watch?v=V1dtkvebauw
   Para editar algunos audios y convertirlos de formato se usaron las aplicaciones en linea:
   recortar, https://mp3cut.net/es/
   convertidor, https://www.flvto.biz/es76/
   */
  //Créditos
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
  text("desconocido se encuentran debidamente referenciadas en el código(pestaña Menu, línea 124),", 30, 310);
  text("al igual que los audios.", 30, 340);
  text("Muñeco de nieve:   Cisily", 300, 360);
  text("Montañas:   Carlos A. Gatica V.", 300, 400);
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
    opc = 0;
    delay(150);
  }
}

void perder() { //metodo al perder
  image(fondo2, 0, 0);
  fill(0);
  textSize(80);
  text("Perdiste!", 300, 100);
  fill(b1, 160);
  rect(80, 165, 140, 60, 5);
  textSize(30);
  fill(n1);
  text("Reiniciar", 90, 205);
  //al hacer click el color de los botones se invierte y reinicia el juego
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
  //al hacer click el color de los botones se invierte y lleva al menú principal
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
