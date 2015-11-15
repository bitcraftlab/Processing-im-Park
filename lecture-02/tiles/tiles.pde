
PImage img;

// tiling parameters
int columns = 5;
int rows = 5;
int tiles = columns * rows;

// change this to show/hide the labels ontop of the tiles
boolean debugview = true;

// size of the labels
int labelWidth = 20;
int labelHeight = 20;

// array for the tiles
PImage[] parts = new PImage[tiles];

// dimensions of a single tile
int dx;
int dy;


void setup() {
  
  size(300, 300);
  
  // calculate dimensions of a single tile
  dx = width / columns;
  dy = height / rows;
  
  // load image and draw it on the canvas
  img = loadImage("park_008.jpg");
  image(img, 0, 0, width, height);
  
  // extract the tiles from the canvas
  for(int i=0; i < tiles; i++) {
    
    // get tile coordinates
    int x = (i % columns) * dx;
    int y = (i / columns) * dy;
    
    // crop tile from the canvas
    parts[i] = get(x, y, dx, dy);
    
  }
  
  noLoop();
   
}

void draw() {
  
  background(0);
  
  for(int i=0; i < tiles; i++) {
    
    // get tile coordinates
    int x = (i % columns) * dx;
    int y = (i / columns) * dy;
    
    // cange the order of tiles by picking a different index (play with this!)
    
    //// invert indices
    // int index = tiles - i - 1;
    
    // pick a random index
    int index = int(random(tiles));
    
    // make sure the index does not get out of range ...
    index = index % tiles;
    
    // show the tile
    image(parts[index], x, y);
    
    // show grid ontop of the tiles
    noFill();
    rect(x, y, dx, dy);
    
    // just a quick hack to put a label ontop of each tile
    if(debugview) { 
      
      // draw white labels behind the numbers so we can read them better
      textAlign(CENTER);
      fill(255, 150);
      noStroke();
      rect(x +dx/2 -labelWidth/2, y +dy/2 -labelHeight/2, labelWidth, labelHeight);
      
      // draw numbers on tiles
      fill(0);
      text(index, x + dx/2, y+dy/2 + 5);
    }
    
  }
  
}
