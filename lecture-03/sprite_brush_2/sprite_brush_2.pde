
///// SPRITE BRUSH 2 /////

// What's new?

// 1. using an alpha mask
// 2. resizing the brush 

PImage brush;
PImage alpha;

int w = 100; // brush width
int h;       // brush height, depends on aspect ratio of the image

void setup() {
  
  // white background
  background(255);
  
  // set canvas size
  size(600, 400);
    
  // load brush
  brush = loadImage("park_008.jpg");
  alpha = loadImage("park_008_alpha.gif");
  brush.mask(alpha);
  
  // calculate new brush height
  h = w * brush.height / brush.width;
  
  // resize the brush
  brush.resize(w, h);

}

void draw() {
  
  // get x position of top left corner of the brush
  int x = mouseX - w / 2;
  
  // get y position of top left corner of the brush
  int y = mouseY - h / 2;
  
  // draw the brush onto the canvas
  image(brush, x, y);
  
}
