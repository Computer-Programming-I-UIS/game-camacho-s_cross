/* Juego Camacho´s Cross
 Creado por: Sergio Andrés Angarita Camacho  2190441
 Jesse Solomon Blair Camacho     2191740
 Descripción: Juego ligeramente basado en el dinosaurio offline de Google, el motociclista deberá 
 saltar los muñecos de nieve para poder sobrevivir y asi alcanzar el mejor puntaje.
 POR FAVOR AÑADIR LA BIBLIOTECA MINIM EN CASO DE NO TENERLA (esta se usa para reproducir el audio)*/

//Se declaran las variables globales, los objetos,las imagenes, y audio
edific e;//edificios
carret cra;//carretera
bosq bq;//bosque
cloud c; //nubes
mount m; //montañas
terreno t;//terreno
terreno2 t2;
cacts cac;
Cam cam;//personaje
Obst ob ;//obstaculos
import ddf.minim.*; //se importa la biblioteca minim que se usa en la parte del audio
Minim minim;
AudioPlayer audmenu, audjuego, audperder, audsalto;//nombres de los audios
int b=0, opcion, opc, select, cte1, cte2, cte3, cte4;
int ancho, alto, control=0, slt, img;
PFont fuente; //Se añade una fuente 
PImage menu, fondo, cla, sonido, sn1, sn2, fondo2;//imagenes de cada una de los terminos 
PImage nubes, montana, terrenoN, obst, ski, jump, cactus, desert, desert1, carretera, edificios, auto, bosque, roca;
;//imagenes de los objetos 
PImage sltrojo, sltverde, sltazul, sltnegro, mtroja, mtverde, mtazul, mtnegra;
color n1, n2, n3, l;
color b1, b2, b3;
boolean salto, play, musica=true, efectos=true;
int puntaje;//puntaje
int puntaje_max=0; //puntaje maximo

void setup() {
  size(1000, 500); //tamaño ventana de juego
  puntaje = 0; //valor inicial del puntaje
  minim = new Minim(this);
  audmenu = minim.loadFile("menu.wav"); //audio para el menú
  audjuego = minim.loadFile("juego.wav"); //audio para la jugabilidad
  audperder = minim.loadFile("perder.wav"); //audio al perder
  audsalto = minim.loadFile("salto.wav");  //audio para el salto
  audsalto.setGain(-20);
  audmenu.setGain(-20);
  audjuego.setGain(-20);
  audperder.setGain(-15);


  nubes =loadImage("nube3.png"); //imagen de la nube
  c = new cloud(nubes, 0);//variables para el constructor de las nubes

  montana =loadImage("montanas.png");//imagen de las montanas
  m = new mount(montana, 0);

  terrenoN= loadImage("terrenonie.jpg");//imagen del terreno
  t = new terreno(terrenoN, 0);//variables para el constructor de las nubes

  desert =loadImage("desierto2.png");
  desert1 =loadImage("desierto3.png");
  t2 = new terreno2(desert, 0);
  cactus =loadImage("cactus1.png");
  cac = new cacts(cactus, 265, 150, 125);

  edificios =loadImage("ciudad1.png");
  e = new edific(edificios, 70);

  carretera =loadImage("carretera2.jpg");
  auto=loadImage("auto.png");
  cra = new carret(carretera, 300);

  bosque =loadImage("bosque.png");
  roca =loadImage("roca.png");
  bq = new bosq(bosque, 90);


  mtnegra=loadImage("moto4r.png");//imagen de la moto
  mtroja=loadImage("mtroja.png");//imagen de la moto en rojo
  mtverde=loadImage("mtverde.png");//imagen de la moto en verde
  mtazul=loadImage("mtazul.png");//imagen de la moto en azul
  cam = new Cam(70, 250, 170, 160);//variables para el constructor de la moto

  sltnegro=loadImage("salto.png");//imagen del salto
  sltrojo=loadImage("sltrojo.png");//imagen del salto en rojo
  sltverde=loadImage("sltverde.png");//imagen del salto en verde
  sltazul=loadImage("sltazul.png");//imagen del salto en azul

  cla=loadImage("clasificacion.png"); //imagen de la clasificacion del juego

  sn1=loadImage("sn1.png");//imagen de 
  sn2=loadImage("sn2.png");//imagen de 

  ski=loadImage("ski.png");
  obst=loadImage("snowman_.png");//imagen del obstaculo
  ob = new Obst(obst, 280, 150, 133);//variables para el constructor de los obstaculos


  fuente=loadFont("Harlow.vlw");  //fuente utilizada en la interfaz del juego
  textFont(fuente);

  menu =loadImage("menu.png");  //imagen del motociclista del menu
  fondo =loadImage("fondo.jpg");  //imagen del fondo en el menu
  fondo2 =loadImage("fondo2.jpg");  //imagen del fondo al perder
}
void draw() {
  background(#4BBBFF); //color de fondo

  switch (opcion) { //switch para definir las opciones del menu
    //menu principal
  case 0:       
    image(fondo, 0, 0);
    image(menu, -50, -70);
    image(cla, 10, 400);
    fill(0);
    textSize(80);
    text("Camacross", 600, 70);
    botones(); 
    if (musica==true) {
      audmenu.play();
    } else {
      audmenu.pause();
    }
    break;
    //jugabilidad
  case 1:
    seleccion();
    break;
    //opciones de sonido
  case 2:
    Sonido();
    if (musica==true) {
      audmenu.play();
    }
    if (musica==false) {
      audmenu.pause();
    }
    break;
    //opciones del juego (ayuda y créditos)
  case 3:
    options();
    break;
    //Cuando el jugador pierde
  case 4:
    perder();
    audjuego.pause();
    if (efectos==true) {
      audperder.play();
    }
    if (efectos==false) {
      audperder.pause();
    }
    break;
  case 5:

    ob.display();
    t.display();
    c.display();
    e.display();
    cra.display();
    puntaje();
    cam.display();
    audjuego.play();
    break;
  case 6:
    cra.display();
    c.display();
    bq.display();
    puntaje();
    cam.display();
    audjuego.play();
    break;
  case 7:
    bq.display();
    c.display();
    t2.display();
    puntaje();
    cam.display();
    cac.display();
    audjuego.play();
    break;
  }
}
