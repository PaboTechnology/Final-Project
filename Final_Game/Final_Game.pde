//Main Game
UFO ufo;
P2UFO UFO;
Wall wall;
ArrayList<Bullet> bull=new ArrayList<Bullet>();
void setup() {
  wall=new Wall();
  size(800, 800);
  ufo=new UFO();
  imageMode(CENTER);
  UFO=new P2UFO();
  frameRate(40);
    for (int i=0; i<5; i++) {
    bull.add(new Bullet());
  }
}

void draw() {
  wall.display();
  for (int i=0; i<bull.size (); i++) {
    Bullet b=bull.get(i);
    b.display(); 
    b.move();
  }
  ufo.display();
  ufo.move();
  UFO.display();
  UFO.move();
}

