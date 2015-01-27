class Wall {
  color c;
  color wall;
  color r;
  color l;
  color t;
  color b;
  color r2;
  color l2;
  color t2;
  color b2;
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
    l= map.get(int(ufo.loc.x-35), int(ufo.loc.y));
    r= map.get(int(ufo.loc.x+35), int(ufo.loc.y));
    t= map.get(int(ufo.loc.x), int(ufo.loc.y-35));
    b= map.get(int(ufo.loc.x), int(ufo.loc.y+35));
    l2= map.get(int(UFO.x-35), int(UFO.y));
    r2 =map.get(int(UFO.x+35), int(UFO.y));
    t2= map.get(int(UFO.x), int(UFO.y-35));
    b2= map.get(int(UFO.x), int(UFO.y+35));
    //    println("mouse color: "  + m);
  }
}

