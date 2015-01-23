//Main Game
UFO ufo;
P2UFO UFO;
ArrayList<Bullet> bull=new Arraylist<Bull>();
void setup() {
  size(800, 800);
  ufo=new UFO();
  imageMode(CENTER);
  UFO=new P2UFO();
}

void draw() {
  for (int i=0; i<5; i++) {
    bull.add(new Bullet());
  }
  for (int i=0; i<bull.size (); i++) {
    Bullet b=bullet.get(i);
    bull.display(); 
    bull.move();
    if (bull.loc.x) {
      rain.remove(i);
    }
  }
  background(0);
  ufo.display();
  ufo.move();
  ufo.shoot();
  UFO.display();
  UFO.move();
}

