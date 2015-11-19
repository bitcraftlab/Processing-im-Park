
////////////////////////////////////////////////////////////////

///////// i n t e r  ///////////////////////////////////////////

//////////////////////////////////////////// l a c e d /////////

////////////////////////////////////////////////////////////////

///////// (c) martin schneider 2010 ////////////////////////////

////////////////////////////////////////////////////////////////



// inspired by the work of J.K. Keller:
// http://www.jk-keller.com/works/2009/reverse-keetra



// input 

PImage img;
int[][] edges;
int minborder = -2;

// transform params

float t1, t2; 
int jerk = 2; 
int raster = 2; 
int mirror = -1;
int b = minborder; 
int fc;



////////////////////////////////////////////////////////////////

void setup() {
  
  size(600, 500); 

  // Image by Ashley R. Good ( http://www.flickr.com/photos/kmndr/2788742255/ ) CC-by-2.0
  img = loadImage("profile.jpg");
  img.resize(width, height);
  edges = edges(img, 8, 6);

  
  /*
  img = loadImage("https://web.archive.org/web/20140816061307/http://jk-keller.com/works/images/you-me-you-kd-orig-470.jpg");
  img.resize(width, height);
  edges = edges(img, 8, 6);
  */

  /*
  img = loadImage("https://web.archive.org/web/20140816061307/http://jk-keller.com/works/images/you-me-you-jk-orig-470.jpg");
  img.resize(width, height);
  edges = edges(img, 12, 6);
  */
 

}



////////////////////////////////////////////////////////////////

void draw() {
  tint(255, 64);
  int frames = frameCount - fc;
  int tx = frames % raster - raster/2;
  int ty = (frames / raster) % raster;
  image(interlace(img), tx*jerk, ty*jerk);
}



////////////////////////////////////////////////////////////////

void keyPressed() {
  switch(key) {
    case 'j': jerk=jerk^10; raster=raster^10; fc = frameCount; break;
    case 'm': mirror *= -1; break;
   
  }
}