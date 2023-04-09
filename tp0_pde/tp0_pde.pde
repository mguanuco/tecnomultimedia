
PImage osopanda;

void setup(){
   size(800, 400);
   colorMode(RGB);

   osopanda = loadImage("osopanda.jpg");
   
  }

void draw(){
  background (89,125, 163);
  fill (0, 255, 0);
  noStroke();  
  image(osopanda, 400, 0, 400, 400);
 
fill(0);
ellipse(200, 350, 300, 350);

fill(239, 222, 205);
ellipse(200, 150, 250, 230);

fill(0);
circle(100, 70, 80);
fill(0);
circle(300, 70, 80);


fill(0);
triangle(150, 150, 250, 150, 200, 200);

fill(239, 222, 205);
rect( 150, 130, 100, 50);


fill(0);
circle(150, 140, 30);
circle(140, 150,30);

circle(250, 150, 30);
circle(240, 140, 30);

ellipse( 200, 230, 50, 10);

fill(50);
circle(150, 140, 20);
fill(240);
circle(150, 140, 15);
fill(0);
circle(150, 140, 13);
fill(255);
circle( 147, 137, 2);

fill(50);
circle(240, 140, 20);
fill(240);
circle(240, 140, 15);
fill(0);
circle(240, 140, 13);
fill(255);
circle(237, 137, 2);


 }
