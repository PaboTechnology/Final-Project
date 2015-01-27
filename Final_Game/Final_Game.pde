//Main Game
UFO ufo;
P2UFO UFO;
Wall wall;
move owen;
ArrayList<Bullet> bull;
float lifespan;
float life;
void setup() {
  wall=new Wall();
  size(800, 800);
  ufo=new UFO();
  imageMode(CENTER);
  UFO=new P2UFO();
  bull=new ArrayList<Bullet>();
  owen = new move();
}
void draw() {
  println("shoot time = " + owen.shootTime);
  owen.update();
  wall.display();
  ufo.display();
  ufo.move();
  UFO.display();
  UFO.move();
  //first ufo Hitting wall
  for (int i= bull.size ()-1; i >= 0; i--) {
    Bullet b=bull.get(i);
    b.display(UFO.x, UFO.y, UFO.r);
    lifespan++;
    if (lifespan>=360) {
      bull.remove(i);
      lifespan=0;
    }
  }
}

