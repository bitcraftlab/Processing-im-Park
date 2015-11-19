
// this is a nice example of recursive functions...

// return a random subset of the input list, of size n.
int[] randomChoice(int[] input, int n) {
    
  int[] output = {};
  
  if(n > 0) {
  
    int i = int(random(input.length));
    int picked = input[i];
  
    int[] left = subset(input, 0, i);
    int[] right = subset(input, i + 1);
    int[] remainder = concat(left, right);
    
    output = append(randomChoice(remainder, n - 1),  picked);
    
  }
  
  return output; 

}
