PImage img;
PImage[] parts = new PImage[9];
int d;
 
void setup() {
 
  size(300, 300);
  d = width / 3;
 
  img = loadImage("park_008.jpg");
  image(img, 0, 0, 300, 300);
 
 
  // get the parts
  for(int i=0; i<9; i++) {
    int x = (i % 3) * d;
    int y = (i / 3) * d;
    parts[i] = get(x, y, d, d);
  }
 
}
 
void draw() {
 
  background(0);
 
  for(int i=0; i<9; i++) {
    int x = (i % 3) * d;
    int y = (i / 3) * d;
    image(parts[8-i], x, y);
  }
 
}
