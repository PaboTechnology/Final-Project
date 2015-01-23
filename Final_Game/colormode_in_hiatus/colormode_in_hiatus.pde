color c;
color wall;
PImage map;
PVector mouse;
void setup() {
  map = loadImage("Map.png");
  size(map.width, map.height);
  c = color(0);
  mouse = new PVector(mouseX, mouseY);
}

void draw() {
  background(map);
  mouse.set(mouseX, mouseY);
  wall = get(0, 0);
  c = get(int(mouse.x), int(mouse.y));
  if (c == wall) {
    ellipse(mouseX, mouseY, 30, 30);
  }
}

