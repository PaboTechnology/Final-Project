//Main Game
UFO ufo;
P2UFO UFO;
Wall wall;
StartScreen startscreen2;
ControlScreen controlscreen2;
//move owen;
ArrayList<Bullet> bull;
int shootTime=20;

void setup() {
  startscreen2 = new StartScreen();
  controlscreen2 = new ControlScreen();
  rectMode(CENTER);
  textAlign(CENTER);
  wall=new Wall();
  size(800, 800);
  ufo=new UFO();
  imageMode(CENTER);
  UFO=new P2UFO();
  bull=new ArrayList<Bullet>();
  //  owen = new move();
}

void draw() {
  startscreen2.move();
  controlscreen2.display();
  //  owen.update();
  wall.display();
  for (int i=0; i<bull.size (); i++) {
    Bullet b=bull.get(i);
    b.display(); 
    b.move();
    wall.ball(b);

    println(b.vel);
    if (wall.l3 == wall.wall) {
      b.vel.x*=-1;
    }
    if (wall.r3 == wall.wall) {
      //      bull.remove(b);
      b.vel.x*=-1;
    }
    if (wall.t3 == wall.wall) {
      //      bull.remove(b);
      b.vel.y*=-1;
    }
    if (wall.b3 == wall.wall) {
      //      bull.remove(b);
      b.vel.y*=-1;
    }
  }
  ufo.display();
  ufo.move();
  UFO.display();
  UFO.move();
  // first ufo Hitting wall
}

void keyPressed() {
  if (key=='m') {
    bull.add(new Bullet(ufo));
  }
}

