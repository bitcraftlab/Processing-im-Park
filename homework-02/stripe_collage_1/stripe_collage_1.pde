

// STRIPE COLLAGE 1


// parameters
int stripes = 20;
String filename1 = "park_005.jpg"; 
String filename2 = "park_009.jpg"; 

// load images
PImage img1 = loadImage(filename1);
PImage img2 = loadImage(filename2);

// declare image to hold a stripe
PImage stripe = null;
    
// square canvas
size(300, 300);

// use first photo as background
image(img1, 0, 0, width, height);

// get dimensions of the second photo
int w = img2.width;
int h = img2.height;

// calculate height of a stripe in photo dimensions
int dx = h / stripes;

// calculate height of a stripe in screen dimensions
int dxScreen = height/ stripes;


for(int i = 0; i < 20; i++) {
  
  // get a single stripe from one of the images
  if(random(1) > 0.5) {
    stripe = img1.get(0, i*dx, w, dx);
  } else {
    stripe = img2.get(0, i*dx, w, dx);
  }
  
  // display the stripe on screen
  image(stripe, 0, i * dxScreen, width, dxScreen); 
  
}

