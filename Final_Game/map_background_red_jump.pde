color c;
color wall;
PImage map;
PVector mouse;
int Xoffset ;
int Yoffset ;
void setup() {
  map = loadImage("Map.png");
  size(map.width, map.height);
  c = color(0);
  mouse = new PVector(mouseX, mouseY);
  Xoffset=40;
}

void draw() {
  background(map);
  mouse.set(mouseX, mouseY);
  wall = get(0, 0);
  fill(255, 0, 0);
  ellipse(mouseX+Xoffset, mouseY+Yoffset, 30, 30);
  c = get(int(mouse.x), int(mouse.y));
  if (c == wall) {
    Xoffset=-20  ;
  } else {
    Xoffset=40;
  }
}

