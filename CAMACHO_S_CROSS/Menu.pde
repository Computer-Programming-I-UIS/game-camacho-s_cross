void opciones(){
  fill(0);
  textSize(80);
  text("Opciones",400,70); 
  fill(l);
  rect(10, 430, 100, 50, 5);
  fill(n2);
  textSize(30);
  text("Atrás",25,465);
  if ((mouseX>10) && (mouseX<10+100) && (mouseY>430) && (mouseY<430+50)  ) {
        l=255;
        n2=0;
      } else {
        l=0;
        n2=255;
      }
}

void creditos(){
  fill(0);
  textSize(80);
  text("Créditos",400,70); 
}
