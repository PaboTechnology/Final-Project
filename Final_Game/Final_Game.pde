//Main Game
UFO ufo;
P2UFO UFO;
Wall wall;
//move owen;
ArrayList<Bullet> bull;
int shootTime=20;
void setup() {
  wall=new Wall();
  size(800, 800);
  ufo=new UFO();
  imageMode(CENTER);
  UFO=new P2UFO();
  bull=new ArrayList<Bullet>();
  //  owen = new move();
}
void draw() {
  //  owen.update();
  wall.display();
  ufo.display();
  ufo.move();
  UFO.display();
  UFO.move();
  // first ufo Hitting wall
  for (int i=0; i<bull.size (); i++) {

    Bullet b=bull.get(i);
    b.display(); 
    b.move(b);
    wall.ball(b);
    println(b.vel);
  }
}

void keyPressed() {
  if (key=='m') {
    bull.add(new Bullet(ufo));
  }
}

