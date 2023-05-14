PImage FRA, FRA2, FRA3, fran;
String texto, texto2, texto3;
int miVariable;
float x=0,velx=3;
String estado = "inicio";
int cuentaFotograma = 0;
float y=0;
int contador;
PFont fuente;
float distancia;
int radio;
boolean reiniciarBoton;

void setup(){
  size (640,480);
  background (#FFFFFF);
println(PFont.list());
 FRA = loadImage("tank1.jpg");
   FRA2 = loadImage("tank2.jpg");
   FRA3 = loadImage("tank3.jpg");
   fran = loadImage("military.jpg");
  y=150;
  texto = "El tanque T-34 fue sovietico diseñado\npara la segunda guerra mundial";
  texto2 = "El desarrollo del T-34 comenzó en 1937,\n y el tanque entró en servicio en el Ejército\n Rojo en 1940. Fue diseñado por el ingeniero \n soviético Mikhail Koshkin,\n quien buscó combinar una protección\n efectiva con un armamento potente \n y una movilidad superior.";
  texto3 = "El tanque tenía un chasis resistente y\n una armadura inclinada para aumentar su capacidad\n de defensa. Estaba armado con un cañón de\n 76,2 mm y dos ametralladoras, y era capaz \n de alcanzar velocidades de hasta\n 55 km/h.";
  textSize(20);
  miVariable = 1000;
  println(frameCount);
  fuente = loadFont("Ebrima-Bold-48.vlw");
  distancia = dist(mouseX, mouseY, 418, 435);
  radio = 35/2;
}
void draw(){
  
  background (#16B454);
  miVariable = frameCount;
  println(miVariable);
  textSize(18);
  textAlign(LEFT);
  text(cuentaFotograma,20,40);
  text(estado,20,45);
  textFont(fuente);
  if (estado.equals("inicio") ){
  //pantalla de inicio
  fill(255);
  image(fran, 1,1,800,500);
  textSize(50);
 textAlign(CENTER);
 
 text("CLICK PARA INICIO",width/2, height/2);
 fill(#D13950);
 ellipse(width/2,300,100,100);
 
 
  }
  
 else if (estado.equals("pantalla 1") ) {
 //pantalla 1
  fill(255);
  image(FRA, 1,1,700,500);
 textAlign(CENTER);
 textSize(0.5+contador);
 fill(#FF0000);
 text(texto,310,250);
 if(contador<34){
    contador++; 
   }
 
 //incremnto del contador:
 cuentaFotograma++;
 if(cuentaFotograma>= 280) {
  estado = "pantalla 2";
  cuentaFotograma = 0;

   
 }
  
 }
 else if (estado.equals("pantalla 2") ) {
 //pantalla 2
  fill(#FF0000);
  image(FRA2, 1,1,700,500);
 textAlign(CENTER);
 textSize(31);
 text(texto2,310,650-miVariable);
 
  //incremnto del contador:
 cuentaFotograma++;
 if(cuentaFotograma>= 332) {
  estado = "pantalla 3";
  cuentaFotograma = 0;
   
 }
  
 }
 
 else if(estado.equals("pantalla 3") ) {
  //pantalla 3
  fill(#FF0000);
  image(FRA3, 1,1,700,500);
 textAlign(CENTER);
 textSize(31);
 text(texto3,miVariable-600,129);
 
 //incremnto del contador:
 cuentaFotograma++;
 if(cuentaFotograma>= 500) {
  estado = "inicio";
   cuentaFotograma = 0;
 }
 
 
   
 }

}


  
void mousePressed() { 
if (estado.equals("inicio") ){
  if(dist(mouseX,mouseY,width/2,300)<50) {
  
  estado = "pantalla 1";
  cuentaFotograma = 0;
  }
}  else if (estado.equals("pantalla 1") ) {
  estado = "pantalla 2";
  cuentaFotograma = 0;
}  else if (estado.equals("pantalla 2") ) {
  estado = "pantalla 3";
  cuentaFotograma = 0;

}  else if (estado.equals("pantalla 3") ) {

  estado = "inicio";
  cuentaFotograma = 0;
}

  
  
}
