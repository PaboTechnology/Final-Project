class Wall {
//  declare variables
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
  color r3;
  color l3;
  color t3;
  color b3;
  color r4;
  color l4;
  color t4;
  color b4;
  color m;
  PImage map;
  PVector mouse;
  Wall() {
//    initialize variables
    map = loadImage("Map2.png");
    c = color(0);
    mouse = new PVector(mouseX, mouseY);
  }

  void display() {
    image(map, 0, 0);
    wall = (-1);
    m=map.get(int(mouseX), int(mouseY));
    println(m);
//    get colors of points of p1ufo, p2ufo
    l= map.get(int(ufo.loc.x-25), int(ufo.loc.y));
    r= map.get(int(ufo.loc.x+25), int(ufo.loc.y));
    t= map.get(int(ufo.loc.x), int(ufo.loc.y-25));
    b= map.get(int(ufo.loc.x), int(ufo.loc.y+25));
    l2= map.get(int(UFO.loc.x-35), int(UFO.loc.y));
    r2 =map.get(int(UFO.loc.x+35), int(UFO.loc.y));
    t2= map.get(int(UFO.loc.x), int(UFO.loc.y-35));
    b2= map.get(int(UFO.loc.x), int(UFO.loc.y+35));
  }
  void ball(Bullet bull) {
//    get points of p1bullet
    l3= map.get(int(bull.loc.x-10), int(bull.loc.y));
    r3 =map.get(int(bull.loc.x+10), int(bull.loc.y));
    t3= map.get(int(bull.loc.x), int(bull.loc.y-10));
    b3= map.get(int(bull.loc.x), int(bull.loc.y+10));
  }
  void ball2(P2Bullet bull) {
//    get points of p2bullet
    l4= map.get(int(bull.loc.x-10), int(bull.loc.y));
    r4 =map.get(int(bull.loc.x+10), int(bull.loc.y));
    t4= map.get(int(bull.loc.x), int(bull.loc.y-10));
    b4= map.get(int(bull.loc.x), int(bull.loc.y+10));
  }
}
