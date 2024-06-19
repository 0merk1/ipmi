//Video YT https://youtu.be/d0_uGqc-BcU
float Cua = 40; // tamaño de cada cuadradro
float Mov = 0; // variable de movimiento
float Frame = 1; // variable para aumentar el movimiento
PImage Img;

void setup() {
  size(800, 400);
  noStroke();
  Img = loadImage("1.png");
}

void draw() {
  background(255);
  
  //Esto ajusta Mov basado en el tiempo (fotogramas)
  Mov += Frame;
  
  // patrón de cuadrados
  for (float y = 0; y < height; y += Cua) {
  for (float x = 0; x < width; x += Cua) {
      
      // Calcula el valor de color basado en la posición de y, x y Mov
      float colorValue = 128 + 127 * sin((x + y + Mov) * 0.05);
      fill(colorValue);
      rect(x, y, Cua, Cua);
    }
  }
  
  //dibuja la imagen fuera de los bucles for
  image(Img, 0, 0, 400, 400); // Ajusta las dimensiones según tu imagen
}

void mouseClicked() {
  // aumenta los frames/el movimiento de los cuadrados en 0.2 cada vez que se hace clic
  Frame += 0.2;
  
  // si el frame alcanza o supera 10, se reinicia solo sin usar la tecla 'R'
  if (Frame >= 10) {
    Frame = 1; // reiniciar el Frame a su valor inicial
  }
}

void keyPressed() {
  // reiniciar el frame con la tecla "R"
  if (key == 'r' || key == 'R') {
    Frame = 1; // reiniciar el Frame a su valor inicial
  }
}
