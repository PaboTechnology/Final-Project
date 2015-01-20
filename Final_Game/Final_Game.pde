//Main Game
UFO ufo;
P2UFO UFO; 
void setup() {
  size(800, 800);
  ufo=new UFO();
  imageMode(CENTER);
  UFO=new P2UFO();
}

void draw() {
  background(0);
  ufo.display();
  ufo.move();
  UFO.display();
  UFO.move();
}

