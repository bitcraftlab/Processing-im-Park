
int[] stripeFactors = {2, 3, 5, 10, 15, 25, 50, 150, 600};

// add some keyboard interaction!
void keyPressed() {
  
  // numeric keys
  int num = key - '0';
  int maxnum = min(stripeFactors.length + 1, 9);
  if(num >= 1 && num <= maxnum) {
    stripes = stripeFactors[num-1];
    redraw();
    return;
  }
  
  // other keys
  switch(key) {
    
    // press the 's' key to save a screenshot
    case 's': 
      save("collage.jpg");
      return;
      
    case 'l':
      loadImages();
      return;
      
    case CODED:
      switch(keyCode) {
      
        case UP:
          m++;
          break;
          
        case DOWN:
          m--;
          break;
          
        case RIGHT:
          randomness++;
          break;
            
        case LEFT:
          randomness--;
          break;
       
      }

  }
  
  m = constrain(m, 2, images.length);
  randomness = constrain(randomness, 0, m-2);
  
  redraw();
  

  
}
