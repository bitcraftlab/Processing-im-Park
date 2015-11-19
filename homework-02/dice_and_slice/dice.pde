

void showDice(PImage dice, int x, int y) {
  
  // show the dice
  image(dice, x * ddice, y * ddice);
  
  // show surrounding rectangle
  if (debug) {
    noFill();
    rect(x * ddice, y * ddice, ddice, ddice);
  }
  
}


PImage sliceDice(PImage dice1, PImage dice2, int n, int r) {
  
  // create a new custom canvas and draw slices from both images on top
  PGraphics g = createGraphics(ddice, ddice);
  int dslice = dice1.width / n;
  
  g.beginDraw();

  // draw all the stripes
  for(int i = 0; i < n; i++) {
    PImage dice;
    
    // select one of the dices
    if(i % 2 == 0) {
      dice = dice1;
    } else {
      dice = dice2;
    }

    // draw a slice
    if(r % 2 == 0) {
      // get horizontal slice
      PImage slice =  dice.get(0, i * dslice, ddice, dslice);
      g.image(slice, 0, i * dslice);
    } else {
     // get vertical slice
      PImage slice =  dice.get(i * dslice, 0, dslice, ddice);
      g.image(slice, i * dslice, 0);
    }
    

  }

  g.endDraw();
  return g;

}