PImage liminal;

void setup(){
size (800, 400);
liminal = loadImage("123.png");
}

void draw(){
  background (255,255,255);
  println(mouseX, mouseY);
image(liminal, 400, 0, 400, 400);
//Antes de todo sabia que podia hacerlo con circle, mas elipses, etc, pero queria darle un toque mas como cubista o mas a mi manera saludos :D
//Cabeza

strokeWeight(7); //BORDE
fill(207,15,48); //ROJO
beginShape();
vertex (70, 285);
vertex (40, 255);
vertex (20, 225);
vertex (30, 140);
vertex (80, 70);
vertex (135, 50);
vertex (195, 50);
vertex (250, 70);
vertex (300, 140);
vertex (310, 225);
vertex (290, 260);
vertex (260, 285);
endShape();

//PUNTO MEDIO

strokeWeight(0);
fill (255,255,255);
beginShape();
vertex (90, 135);
vertex (115, 85);
vertex (165, 65);
vertex (215, 85);
vertex (240, 135);
vertex (215, 185);
vertex (165, 205);
vertex (115, 185);
vertex (90, 135);
endShape();

//PUNTO MEDIO IZQUIERDO

strokeWeight(0);
fill (255,255,255);
beginShape();
vertex (34, 140);
vertex (49, 121);
vertex (50, 157);
vertex (49,184);
vertex (37,209);
vertex (23,225);
endShape();

//PUNTO MEDIO DERECHO
strokeWeight(0);
fill (255,255,255);
beginShape();
vertex (297, 143);
vertex (284,121);
vertex (276,157);
vertex (277,186);
vertex (287,209);
vertex (307,225);
endShape();

//CUELLO? xd 

strokeWeight(7);
fill(255,220,198);
beginShape();
vertex (70, 275);
vertex (105, 250);
vertex (110, 250);
vertex (225, 250);
vertex (260, 275);
vertex (260, 310);
vertex (225, 345);
vertex (105, 345);
vertex (70, 310);
vertex (70, 275);
endShape();

fill (0,0,0);
ellipse (125, 285, 10, 40);
ellipse (205, 285, 10, 40);

strokeWeight(2);

fill (255,255,255);
ellipse (125, 275, 8, 17);

fill (255,255,255);
ellipse (205, 275, 8, 17);

}
