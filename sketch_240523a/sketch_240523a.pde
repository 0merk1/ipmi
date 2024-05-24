PImage img1, img2, img3;
float posX, posY;
int estado;
float opacidadTexto = 255;
PFont miFuente;
int contador;
String texto1, texto4, texto2, texto3;

void setup() {
  size(640, 480);
  img1 = loadImage("data/pantalla1.png");
  img2 = loadImage("data/pantalla2.png");
  img3 = loadImage("data/pantalla3.png");

  texto1 = "Ámsterdam se ilumina con La Noche Estrellada de Van Gogh";
  texto2 = "Amsterdam Light Festival es una fiesta brillante que este año le rindió un homenaje a una de las obras mas icónicas del pintor Vincent Van Gogh.";
  texto3 = "Dicha creación estuvo a cargo de los artistas serbios Ivana Jelić y Pavle Petrović.";
  texto4 = "Repetir presentacion?";

  miFuente = loadFont("data/Garamond-Bold-48.vlw");
  textFont( miFuente );
  textAlign(CENTER);
  estado = 1;
  contador = -120;
  posX = 10;
  posY = 320;
  
}
void draw() {
  println("estado="+estado);
  background(0, 255, 0);
  if ( estado == 1 ) {

    image( img2, 0, 0, width, height);
    fill(255);
    textSize(44);
    text ( texto1, posX, posY, 620, 200);
    
    contador++;
    if ( contador>=60 ) {

      estado++;
      contador = 0;
    }
  } else if ( estado == 2 ) {

    image( img2, 0, 0, width, height);
    fill(255, opacidadTexto);
    textSize( map(opacidadTexto, 255, 0, 44, 0 ) );
    text ( texto1, posX, posY, 620, 200);

    opacidadTexto-=3;
    if (opacidadTexto<=0) {
      estado = 3;
      contador = -300;
      posX = 20;
      posY = 320;
      opacidadTexto = 255;
      
    }
  } else if ( estado == 3 ) {
  
    image( img1, 0, 0, width, height);
    fill(255);
    textSize(30);
    text ( texto2, posX, posY, 600, 200);

    contador++;
    if ( contador>=60 ) {
      
      estado++;
      contador = 0;
    }
  } else if ( estado == 4 ) {
 
    image( img1, 0, 0, width, height);
    fill(255);
    textSize(30);
    text ( texto2, posX, posY, 600, 200);

    posY+=5;
    if (posY>=height) {
      estado = 5;
      contador = -180;
      posX = 20;
      posY = 320;
      
    }
  } else if ( estado == 5 ) {

    image( img3, 0, 0, width, height);
    if ( mouseX>240 && mouseX<240+150
      && mouseY >360 && mouseY<360+80 ) {
      fill(0, 255, 0);
    } else {
      fill(255);
      
   textSize(30);
    text ( texto3, 40, 200, 560, 440);
    
    }
    rect( 240, 360, 150, 80);
    
     textSize(30);
    text ( texto4, 40, 330, 560, 240);
    
  } else {
  }
}
void mousePressed() {
  if ( estado==5) {
    if ( mouseX>240 && mouseX<240+150
      && mouseY >360 && mouseY<360+80 ) {
      estado = 1;
    }
  } else {
    estado++;
    contador = -180;
    posX = 0;
  }
}
