void Sonido(){
  fill(0);
  textSize(80);
  text("Sonido",250,140); 
  //sonido=sn1;
  
  if ((mouseX>500) && (mouseX<500+80) && (mouseY>100) && (mouseY<100+45)) {
        //sonido=sn1;
        image(sn2, 500, 100);
      } else {
        //sonido=sn2;
        image(sn1, 500, 100);
      }
  fill(l,160);
  rect(10, 430, 100, 50, 5);
  fill(n2);
  textSize(30);
  text("Atrás",25,465);
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50)) {
        l=255;
        n2=0;
      } else {
        l=0;
        n2=255;
      }
}

void opciones(){
  fill(0);
  textSize(80);
  text("Opciones",400,70); 
  switch (opc) {
  case 0:
  fill(l,160);
  rect(255, 100, 100, 50, 5);
  fill(n2);
  textSize(30);
  text("Ayuda",250,140);
  fill(l,160);
  rect(255, 300, 100, 50, 5);
  fill(n2);
  textSize(30);
  text("Créditos",250,340);
  }
  fill(l,160);
  rect(10, 430, 100, 50, 5);
  fill(n2);
  textSize(30);
  text("Atrás",25,465);
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50)) {
        l=255;
        n2=0;
      } else {
        l=0;
        n2=255;
      }
}
