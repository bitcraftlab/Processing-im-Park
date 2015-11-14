
PImage grid;
PImage tree;

void setup() {
  size(300, 300);
  background(0, 0, 0);
  grid = loadImage("park_grid.jpg");
  tree = loadImage("park_010.jpg");
  frameRate(5);
}

void draw() {

  if (frameCount % 2 == 1) {
    // show grid for odd frames
    image(grid, 0, 0);
  } else {
    // show tree for even frames
    image(tree, 0, 0, 300, 300);
  }
  
}