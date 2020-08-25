//metodo de los puntajes
void puntaje() {
  fill(0); //color    
  textSize(30);//tamaño
  text("Puntaje:", 15, 25);//puntaje     
  text(nf(puntaje, 2), 130, 25);//coordenas de puntaje
  text("Puntaje max:", 735, 25);//punatje maximo
  text(nf(puntaje_max, 2), width-100, 25);//coordenadas puntaje max
}
