
// STRIPE COLLAGE 4

// Improved version of the stripe collage sketch:
// 1. Loading images from a folder
// 2. Improved interaction

///// PARAMETERS /////

int stripes = 2;
int m = 3;       // number of images used for remixing

int randomness = 0;

///// GLOBAL VARIABLES /////

// array to hold images
PImage[] images;

void setup() {
  
  
  // square canvas
  size(600, 600);
  
  // load images from a folder
  loadImages();
  
  // use noLoop so processing only redraws the collage on demand
  noLoop();
  
}


void draw() {
  
  background(255);


  if(images != null) {
     
    // calculate height of a stripe in screen dimensions
    int dx = height/ stripes;
    
    // create a range of integers
    int[] all = range(images.length);

    // pick a random subset of size m
    int[] indices = randomChoice(all, m);
    
    // show selected file names on the console
    println("Selected source files:");
    for(int i = 0; i < indices.length; i++) {
       println(files[indices[i]].toString());
    }
    println();
    println("Randomness: " + randomness);
    println("Step Pattern:");
    
    // index of the stripe to pick
    int pick = 0;
    
    // display stripes
    for(int i = 0; i < stripes; i++) {
  
      // randomly pick one of the indices
      int step =  1 + int(random(randomness + 1));
      
      // make sure we stay in the legal range
      pick = (pick + step) % m;
      
      if(i > 0) {
        print("-"); 
      }
      
      print(step);
  
      int idx = indices[pick];
      
      // select the photo by index
      PImage img = images[idx];
     
      // get dimensions of the photo
      int w = img.width;
      int h = img.height;
    
      // extract a stripe from the selected image
      PImage stripe = img.get(0, i*dx, w, dx);
    
      // display the stripe on screen
      image(stripe, 0, i * dx, width, dx); 
    
    }
    
    println(); 
    println();

  }

}
