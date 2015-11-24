
///// SPRITE BRUSH 4 /////

// What's new?

// 1. Using frames from an animation
// 2. Dancing Baby >>> https://en.wikipedia.org/wiki/Dancing_baby

int n = 76;
PImage[] images = new PImage[n];

// offset to the reference point
int dx = 100;
int dy = 200;

// factor to slow our animation down
int slowdown = 4;

// zoom factor for our image
float zoom = 0.5;

void setup() {
  
  // canvas size
  size(600, 400);
  
  // start out with a white background
  background(255);
  
  // load images into the array using a loop
  for(int i=0; i < n; i++) {
    
    // load the image
    images[i] = loadImage("dancing-baby-" + i + ".gif");
    
    // Use the brightness of the image as its own alpha channel
    // As a result the dark parts of the image will become more transparent
    // Nota Bene: This is a hack :)
    images[i].mask(images[i]);
 
  }
  
}


void draw() {
  
  // pick the index of an image
  int pick = (frameCount / slowdown) % n;

  // move to the mouse position
  translate(mouseX , mouseY);

  // scale the image
  scale(zoom);
  
  // move to the reference point
  translate(-dx, -dy);
  
  // get image from the array and display it
  image(images[pick], 0, 0); 

}

