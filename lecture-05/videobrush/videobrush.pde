
import processing.video.*;

Capture camera;
PImage img;

float w, h;
float alpha, palpha;
float whirly = 0.005;
float zoom = 8;

void setup() {
  
  size(640, 480);
  
  w = width / zoom;
  h = height / zoom;
  
  // init camera
  camera = new Capture(this, width, height);
  camera.start(); // wichtig!
  
  // add first image
  img = createImage(width, height, RGB);
  
  noCursor();
  
}


void draw() {
  
  float d = dist(mouseX, mouseY, pmouseX, pmouseY);
  
  palpha = alpha;
  alpha += d;
  
  d = max(d, 1);
  
  for(int i = 0; i < d; i++) {
    float x = map(i, 0, d, pmouseX, mouseX);
    float y = map(i, 0, d, pmouseY, mouseY);
    float a = map(i, 0, d, palpha, alpha);
    videoBrush(x, y, a);
  } 
}

void videoBrush(float x, float y, float a) {
  pushMatrix();
  translate(x, y);
  rotate(a * whirly);
  translate(-w/2, -h/2);
  image(img, 0, 0, w, h);
  popMatrix();   
}


void captureEvent(Capture camera) {
  camera.read(); // important!
  img = camera.get();
}