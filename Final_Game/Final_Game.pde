//Main Game
UFO ufo;
P2UFO UFO;
Wall wall;
//move owen;
ArrayList<P2Bullet> p2bull;

ArrayList<Bullet> bull;

void setup() {  
  wall=new Wall();
  size(800, 800);
  ufo=new UFO();
  imageMode(CENTER);
  UFO=new P2UFO();
  p2bull=new ArrayList<P2Bullet>();
  bull=new ArrayList<Bullet>();
  //  owen = new move();
}

void draw() {
  wall.display();
  for (int i=0; i<bull.size (); i++) {
    Bullet b=bull.get(i);
    b.display(); 
    b.move();
    wall.ball(b);
    b.kill(UFO);
    b.life(b);
    println(b.totaltime);
    //    println(b.vel);
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
  for (int i=0; i<p2bull.size (); i++) {
    P2Bullet b= p2bull.get(i);
    b.display();
    b.move();
    wall.ball2(b);
    b.kill(ufo);
    b.life(b);
    //    println(b.vel);
    if (wall.l4 == wall.wall) {
      b.vel.x*=-1;
    }
    if (wall.r4 == wall.wall) {
      //      bull.remove(b);
      b.vel.x*=-1;
    }
    if (wall.t4 == wall.wall) {
      //      bull.remove(b);
      b.vel.y*=-1;
    }
    if (wall.b4 == wall.wall) {
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
  if (bull.size()<=2) {
    if (key=='m') {
      bull.add(new Bullet(ufo));
    }
  }
}

void mousePressed() {
  if (p2bull.size()<=2) {
    p2bull.add(new P2Bullet(UFO));
  }
}

