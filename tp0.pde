PImage imagen;


void setup() {
  size(800, 400);
  imagen = loadImage("data/auto.jpeg");
}

void draw() {
  background(#06BC07);
  image(imagen, 0, 0, 400, 400);
 
 stroke(#025002);
 fill(#025002);
 rect(400,1,400,100);
 noStroke();
 stroke(#010301);
 
 fill(2,8,2,230);//color sombra
  rect(404,300,390,50);//sombra
  
  fill(178, 172, 172);//color del caño griss
  rect(750, 314, 75, 10);//caño escape

  fill(219, 27, 20);//color del techo
  rect(496, 144, 200, 66);//techo
  fill(219, 27, 20);//rojo forma
  rect(420, 210, 360, 120);//forma rectangula del auto

  fill(219, 27, 20);//rojo puertas
  rect(520, 210, 79, 120);//PUERTA 2
  rect(590, 210, 79, 120);//puerta 1

  fill(#0F0E0C);//negro parachoque
  rect(705, 280, 80, 50);//para choque 2


  fill(5, 4, 4);//blanco ruedas
  strokeWeight(2); // grosor de la llanta
  circle(500, 320, 60);//ruedas goma 1
  circle(680, 320, 60);//ruedas 2
  fill(252, 237, 237);// blanco
  circle(500, 320, 45);//ruedas interior 1
  circle(680, 320, 45);// ruedas interor 2

  fill(#FF8400);//luz naranja
  rect(420, 245, 30, 24);//giñe 1
  rect(760, 245, 20, 24);//giñe 2

  fill(#0F0E0C);//picaporte negro
  rect(555, 220, 25, 14);//picaporte
  rect(640, 220, 25, 14);//picaporte

  fill(219, 27, 20);//rojo vidrios trasera
  triangle(780, 210, 697, 145, 697, 210);//vidrios trasera
 
 fill(#D3D3D3);//blanco
 triangle(760, 205, 702, 156, 709, 205);//vidrios trasera
  fill(#0F0E0C);//negro parachoque
  rect(415, 280, 50, 50);//para choque 1

fill(#D3D3D3);//blanco
  rect(520,155, 70, 50);//vidrio 1
 rect(598,155, 70, 50);//vidrio 2

fill(255,250,245);//blanco linea
rect(415, 274, 366, 5);

fill(#0F0E0C);//negro linea
 rect(415, 277, 366, 2);

fill(#BC7324);//marron
rect(690,75,70,50);//casa
triangle(760, 75, 735, 56, 688, 75);//techo de la casa
fill(#FAFF6A);
rect(705,76,45,48);//madera clara

rect(712,76,22,48);//puerta


}
