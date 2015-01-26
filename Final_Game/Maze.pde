class Wall {
  color c;
  color wall;
  color r;
  color l;
  color t;
  color b;
  color m;
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
    wall = (-1);
    l= map.get(int(ufo.loc.x-30), int(ufo.loc.y));
    r= map.get(int(ufo.loc.x+25), int(ufo.loc.y));
    t= map.get(int(ufo.loc.x), int(ufo.loc.y-25));
    b= map.get(int(ufo.loc.x), int(ufo.loc.y+25));
    m = map.get(mouseX, mouseY);
//    println("mouse color: "  + m);
  }
}

