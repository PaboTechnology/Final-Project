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
  //  for (int i=0; i<bull.size (); i++) {
  //    if (key=='m') {
  //      Bullet b=bull.get(i);
  //      b.display(); 
  //      b.move();
  //    }
  //  }
//   println("our colors are: \nTop: " + wall.t + "\nBottom: " + wall.b + "\nLeft: " + wall.l + "\nRight: " + wall.r + "\nWall: " + wall.wall);
}

