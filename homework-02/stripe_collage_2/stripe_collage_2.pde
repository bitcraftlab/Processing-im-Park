
// STRIPE COLLAGE 2

// An interactive version of stripe collage sketch.
// Press "s" to save the collage.
// Press any key to create a new one.

// parameters
int stripes = 50;
String filename1 = "park_005.jpg"; 
String filename2 = "park_009.jpg"; 

// images
PImage img1, img2;

// dimensions
int w, h, dx, dxScreen;

// declare image to hold a stripe
PImage stripe = null;  

void setup() {
  
  // square canvas
  size(300, 300);
  
  // load images
  img1 = loadImage(filename1);
  img2 = loadImage(filename2);
  
  // get dimensions of the photo
  // (assuming the photos are all the same size!)
  w = img1.width;
  h = img1.height;
  
  // calculate height of a stripe in photo dimensions
  dx = h / stripes;

  // calculate height of a stripe in screen dimensions
  dxScreen = height / stripes;
  
  // use noLoop so processing only redraws on demand
  noLoop();
}

void draw() {

  for(int i = 0; i < stripes; i++) {
    
    // get a single stripe from one of the images
    if(random(1) > 0.5) {
      stripe = img1.get(0, i*dx, w, dx);
    } else {
      stripe = img2.get(0, i*dx, w, dx);
    }
    
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

