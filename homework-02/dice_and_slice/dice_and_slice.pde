
// DICE AND SLICE

int ddice = 100;

int dicex, dicey;

boolean debug;

PImage dices[];
PImage dices1[];
PImage dices2[];

int slices = 10;
int mode = 0;

void setup() {

  size(500, 400);

  dicey = height / ddice;
  dicex = width / ddice;

  PImage image1 = loadImage("park_009.jpg");
  image1.resize(width, height);
  dices1 = makeDices(image1, dicex, dicey);
    
  PImage image2 = loadImage("park_010.jpg");
  image2.resize(width, height);
  dices2 = makeDices(image2, dicex, dicey);

  noLoop();
  
}


void draw() {

  dices = sliceDices(dices1, dices2, slices);
  
  switch(mode) {
    
    case 0:
      showDices(dices);
      break;
      
    case 1:
      showDices(dices1);
      break;
      
    case 2:
      showDices(dices2);
      break;
  }
  
}