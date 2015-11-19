
PImage img;
PImage img2;
int slices = 20;

void setup() {
  
  size(500, 500);
  
  img = loadImage("park_001.jpg");
  img.resize(width, height);
  
  // loading
  img2 = loadImage("park_002.jpg");
  
  // scaling
  img2.resize(width, height);
  
}

void draw() {
  
  image(img, 0, 0);
  
  int hslice = height / slices;
  
  // slicing
  for(int i=0; i<slices; i++) {
    
    PImage slice = img2.get(0, i * 2 * hslice, width, hslice);
    image(slice, 0, i * 2 * hslice);
    
  }

}