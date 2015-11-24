
// images
PImage brush;
PImage alpha;

// center point of the brush
int dx = 212;
int dy = 145;

void setup() {
  size(500, 500);
  brush = loadImage("park_008.jpg");
}

void draw() {
  image(brush, mouseX -dx , mouseY -dy);
}
