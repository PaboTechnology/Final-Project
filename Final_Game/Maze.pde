class Wall {
  color c;
  color wall;
  color r;
  color l;
  color t;
  color b;
  PImage map;
  PVector mouse;
  Wall() {
    map = loadImage("Map.png");
    c = color(0);
    mouse = new PVector(mouseX, mouseY);
  }

  void display() {
    image(map, 0, 0);
    map.resize(width, height);
    background(map);
    wall = (255);
    l= get(int(ufo.el.x-25),int(ufo.el.y));
    r= get(int(ufo.el.x+25),int(ufo.el.y));
    t= get(int(ufo.el.x),int(ufo.el.y-25));
    b= get(int(ufo.el.x),int(ufo.el.y+25));
  }
}

