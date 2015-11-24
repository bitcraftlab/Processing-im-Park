
///// SPRITE BRUSH 3 /////

// What's new?

// 1. using rotation
// 2. adding a second brush!

// images
PImage brush;
PImage alpha;

// center point of the brush
int dx = 212;
int dy = 145;

// radius of the brush
int dbrush = 205;

// speed of rotation
float speed = 0.005;

void setup() {
  
  size(800, 600);
  
  brush = loadImage("park_008.jpg");
  alpha = loadImage("park_008_alpha_blurry.png");
  brush.mask(alpha);

}

void draw() {

  // let's set a transparent tint, for extra effect
  tint(255, 10);
  
  // move origin of the coordinate system to where the mouse is
  translate(mouseX, mouseY);
  
  // save the current transformation matrix
  pushMatrix();
  
  // rotate around the origin
  rotate(frameCount * speed);
  
  // display the brush
  image(brush, -dx, -dy);
  
  // restore the previous transformation matrix
  popMatrix();
  
  // press the mouse to add an other brush that orbits around the first one
  if(mousePressed) {
    
    // rotate around the center with double speed
    rotate(frameCount * speed * 2);
    
    // move by the diameter of the brush 
    translate(dbrush, 0);
  
    // roll around the center of the second brush
    rotate(frameCount * speed);
    
    // display the second brush
    image(brush, -dx, -dy);
    
  }
  
}
