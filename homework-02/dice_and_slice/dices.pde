
PImage[] makeDices(PImage img, int dicex, int dicey) {
  int n = dicex * dicey;
  PImage[] dices = new PImage[n];
  for (int y = 0; y < dicey; y++) {
    for (int x = 0; x < dicex; x++) {
      int i = y * dicex + x;
      dices[i] = img.get(x*ddice, y*ddice, ddice, ddice);
    }
  }
  return dices;
}


void showDices(PImage[] dices) {
  for (int y = 0; y < dicey; y++) {
    for (int x = 0; x < dicex; x++) {
      int i = y * dicex + x;
      showDice(dices[i], x, y);
    }
  }
}


PImage[] sliceDices(PImage[] dices1, PImage dices2[], int n) {
  PImage[] dices = new PImage[dices1.length];
  for (int y = 0; y < dicey; y++) {
    for (int x = 0; x < dicex; x++) {
      int i = y * dicex + x;
      dices[i] = sliceDice(dices1[i], dices2[i], n, i);
    }
  }
  return dices;
}