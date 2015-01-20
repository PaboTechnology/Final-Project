color c;
PImage map;
void setup() {
  map = loadImage("Map.png");
  size(map.width, map.height);
  c = color(0);
}

void draw() {
  background(map);
  loadPixels();
  
  
  updatePixels();
}

