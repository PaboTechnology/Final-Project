//Main Game
UFO ufo;
P2UFO UFO;
Wall wall;
//ArrayList<Bullet> bull=new ArrayList<Bullet>();
void setup() {
  wall=new Wall();
  size(800, 800);
  ufo=new UFO();
  imageMode(CENTER);
  UFO=new P2UFO();
  //  for (int i=0; i<5; i++) {
  //    bull.add(new Bullet());
  //  }
}

void draw() {  
  wall.display();
  ufo.display();
  ufo.move();
  UFO.display();
  UFO.move();
  //first ufo Hitting wall
  pushMatrix();
  translate(ufo.loc.x, ufo.loc.y);
  wall.c = get(int(ufo.el.x-25), int(ufo.el.y));
  if (wall.c == wall.wall) {
    //    println("touching wall!!") ;
  } else {
    //    println("not");
  }
    wall.c = get(int(ufo.el.x+25), int(ufo.el.y));
    if (wall.c == wall.wall) {
      println("touching wall!!") ;
    } else {
    }
    wall.c = get(int(ufo.el.x), int(ufo.el.y-25));
    if (wall.c == wall.wall) {
      //    println("touching wall!!") ;
    } else {
      //    println("not");
    }
    wall.c = get(int(ufo.el.x), int(ufo.el.y+25));
    if (wall.c == wall.wall) {
      //    println("touching wall!!") ;
    } else {
      //    println("not");
    }
    popMatrix();
    //  for (int i=0; i<bull.size (); i++) {
    //    if (key=='m') {
    //      Bullet b=bull.get(i);
    //      b.display(); 
    //      b.move();
    //    }
    //  }
  }

