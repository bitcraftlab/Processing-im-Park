
// This is a nice example of a function with different function signatures ...

// create a range from 0 .. n - 1
int[] range(int n) {
  return range(0, n-1); 
}

// create an integer array that holds a range of numbers from min to max
int[] range(int min, int max) {
  int n = max - min + 1;
  int a[] = new int[n];
  for(int i = min; i <= max; i++) {
    a[i] = i; 
  }
  return a;
}
