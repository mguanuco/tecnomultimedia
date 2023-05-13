String estado = "inicio";
int cuentaFotograma = 0;
PImage R;
PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage cierre;
PFont berlin;
PFont arial;
int miVariable;
boolean verdaderoOfalso;
int px, py, ancho, alto;
int posX = 200;

void setup() {
  size(640, 480);
  frameRate(30); 
  println(verdaderoOfalso);
  px = 318;
  py = 435;
  ancho = 100;
  alto = 50;

  R= loadImage("R.jpg");
  pantalla1= loadImage("pantalla1.jpg");
  pantalla2= loadImage("pantalla2.jpg");
  pantalla3= loadImage("pantalla3.jpg");
  cierre= loadImage("cierre.jpg");
  berlin= loadFont("berlin.vlw");
  textFont(berlin, 30);
  arial= loadFont("arial.vlw");
}

void draw() {
  println(miVariable);
  background(255);
  textSize(18);
  textAlign(LEFT);
  text( cuentaFotograma, 20, 40);
  text( estado, 20, 55);
if ( estado.equals("inicio") ) {
    //pantalla de inicio:
  image(R, 0, 0, 640, 490);
  fill(255);
  textFont(arial, 40);
  text("PANDAS", 60, 150);
  noStroke();
 if (mouseX<200 && mouseX>110 && mouseY<270 && mouseY>100 ) {
    fill(255, 215,0);
  } else {
    fill(255);
  }   
   ellipse(148, 200, 100, 50);
   fill(0);
   textFont(arial, 15);
   text("INICIAR", 115, 205);
    
  } else if ( estado.equals("pantalla 1")  ) {
    //pantalla 1:
   background(0); 
   image(pantalla1, -250, 100, 700, 300);
   textAlign(LEFT);
   fill(255);
   textFont(berlin, 20);
   text("¿DÓNDE VIVEN?", 320, cuentaFotograma );
   textAlign(LEFT);
   textSize(15);
   text("Viven en los bosques de bambú, donde el clima \n" +
    "se caracteriza por el alto grado de humedad \n" +
    "y las temperaturas son bastante bajas, \n" +
    "lo cual es normal debido a que habitan en zonas \n" +
    "donde la altitud es superior a los 1500 metros", 325, cuentaFotograma+20 );
   
    //incremento del contador:
    cuentaFotograma++;
    //cuentaFotograma = cuentaFotograma+1;
    if ( cuentaFotograma>= 150 ) {
      estado = "pantalla 2";
      cuentaFotograma = 0;
    }
  } else if ( estado.equals("pantalla 2") ) {

    //pantalla 2:
  background(0);
  image(pantalla2, 90, 180, 550, 300);
  fill(255);
  textAlign(CENTER);
  textFont(berlin, 1+cuentaFotograma/4);
  text("¿CÓMO VIVEN?", 300, 75);
  textFont(berlin, 18);
  text("El oso panda es generalmente solitario e independiente, \n" +
    "aunque establece relaciones con sus semejantes, siendo éstas bastante amistosas \n" +
    "siempre que uno no se entrometa en el territorio del otro.", 310, 100 );

    //incremento del contador:
    cuentaFotograma++;
    //cuentaFotograma = cuentaFotograma+1;
    if ( cuentaFotograma>= 100 ) {
      estado = "pantalla 3";
      cuentaFotograma = 0;
    }
  } else if ( estado.equals("pantalla 3") ) {

    //pantalla 3:
  background(0);
  image(pantalla3, 300, 100, 300, 400);
  fill(255);
  textAlign(CENTER);
  textFont(berlin, 20);
  text("¿QUÉ COMEN?", 160, 230 );
  textFont(berlin, 18);
  fill(255,map(cuentaFotograma,0,150,0,255));
  text("Al alimentarse principalmente de hierba, \n" +
    "el panda necesita ingerir unas cantidades \n" +
    "descomunales de bambú a diario", 170, 250 );

    //incremento del contador:
    cuentaFotograma++;
    if ( cuentaFotograma>= 250 ) {
      estado = "pantalla 4";
    }
  } else if ( estado.equals("pantalla 4") ) {
    
    //pantalla 4:
  background(0);
  image(cierre, 98, -100, 450, 650);
  fill(255);{
  ellipse(318, 435, 100, 50);}
  textAlign(CENTER);
  textFont(arial, 15);
  fill(0);
  text("REINICIAR", 318, 438);
 
if ( estado.equals("inicio") ) {
       
}
  }
}

void mousePressed() {
  if ( estado.equals("inicio") ) {
    if ( dist(mouseX, mouseY, 148, 200) <50) {
      
      estado = "pantalla 1";
      cuentaFotograma = 0;
    }
  }
  if( estado.equals("pantalla 4") ) {
    if (dist(mouseX, mouseY,318, 435) <50 ) {
   
    estado= "inicio";
    cuentaFotograma= 0;
    }
  }
if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    posX += 10;
  }

}
