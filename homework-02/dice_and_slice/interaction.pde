
int[] sliceFactors = {2, 4, 5, 10, 25, 50, 100};

void keyPressed() {

  // numeric keys
  int num = key - '0';
  int maxnum = min(sliceFactors.length, 9);

  if (num >= 1 && num <= maxnum) {
    slices = sliceFactors[num-1];
  }

  switch(key) {

  case 'd':
    debug = !debug;
    break;

  case ' ':
    mode = (mode + 1) % 3;
    break;
    
  }

  redraw();
}