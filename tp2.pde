PImage FOTO5;
int gridSize = 5; // Tamaño de la grilla
int squareSize = 70; // Tamaño de los cuadrados
int spacing = 100; // Separación entre los cuadrados
int gritamano = 20; // Tamaño de la grilla
int lineThickness = 10; // Grosor de las líneas
int gritamano2 = 20; // Tamaño de la grilla
int lineThickness2 = 10; // Grosor de las líneas

void setup() {
  size(800, 400);
  FOTO5= loadImage("FOTO5.jpeg");
}

void draw() {
  background(255);
  image(FOTO5, 0, 0, 400, 400);

  float centerX = 650;
  float centerY = 200;
  float gridWidth = gridSize * spacing;
  float gridHeight = gridSize * spacing;
  float startX = centerX - gridWidth/2;
  float startY = centerY - gridHeight/2;

  // Dibujar la grilla de líneas verticales
  float inicioX = 400;
  float inicioY = 0;
  float lineSpacing = height / gritamano;
  
  for (int i = 0; i < gritamano; i++) {
    for (int j = 0; j < gritamano; j++) {
      float posX = inicioX + i * lineSpacing;
      float posY = inicioY + j * lineSpacing;
      
      if ((i + j) % 2 == 0) {
        stroke(0); // Color blanco
      } else {
        stroke(0); // Color negro
      }
      
      strokeWeight(lineThickness);
      line(posX, posY, posX, posY + lineSpacing);
    }
  } 
 
  // Dibujar la grilla de cuadrados rotados
  for (int i = 0; i < gridSize; i++) {
    for (int j = 0; j < gridSize; j++) {
      float posX = startX + i * spacing + spacing/2;
      float posY = startY + j * spacing + spacing/2;
      
      pushMatrix();
      translate(posX, posY);
      rotate(PI/4);
      
      rectMode(CENTER);
      fill(0);
      noStroke();
      rect(0, 0, squareSize, squareSize);
      
      popMatrix();
    }
  }
float inicioX2 = 400;
  float inicioY2 = 0;
  float lineSpacing2 = height / gritamano;
  
    
        
 for (int i = 0; i < gridSize; i++) {
  float yPos2 = map(i, 0, gridSize-1, 0, height);
  
    stroke(255);
  }
  
  strokeWeight(8);
  line(350, 199, width, 199);
}

 
