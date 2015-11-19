
// STRIPE COLLAGE 3

// Improved version of the stripe collage sketch:
// 1. Using several images for the collage
// 2. Take the dimensions of the images into account

///// PARAMETERS /////

int stripes = 75;

String[] filenames = {
  "park_006.jpg",
  "park_001.jpg",
  "park_004.jpg"
};


///// GLOBAL VARIABLES /////

// number of files
int n = filenames.length;

// image array
PImage[] images = new PImage[n];

// stripe dimensions
int dxScreen;

// declare image to hold a stripe
PImage stripe = null;  


void setup() {
  
  // square canvas
  size(300, 300);
  
  // calculate height of a stripe in screen dimensions
  dxScreen = height/ stripes;
  
  // load all images
  for(int i = 0; i < n; i++) {
    images[i] = loadImage(filenames[i]);
  }
  
  // use noLoop so processing only redraws the collage on demand
  noLoop();
  
}

void draw() {


  for(int i = 0; i < stripes; i++) {

    // randomly pick one of the images
    int pick = int(random(n));
    PImage img = images[pick];
    
    // get dimensions of the photo
    int w = img.width;
    int h = img.height;
  
    // calculate height of a stripe in photo dimensions
    int dx = h / stripes;
  
    // extract a stripe from the selected image
    stripe = img.get(0, i*dx, w, dx);
  
    // display the stripe on screen
    image(stripe, 0, i * dxScreen, width, dxScreen); 
  
  }

}


// add some keyboard interaction!
void keyPressed() {
  
  switch(key) {
    
    // press the 's' key to save a screenshot
    case 's': 
      save("collage.jpg");
      break;
      
    // press any key to redraw 
    default:
      redraw();
  }
  
}

