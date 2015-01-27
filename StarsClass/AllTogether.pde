StartScreen startscreen2;
ControlScreen controlscreen2;

void setup() {
  startscreen2 = new StartScreen();
  controlscreen2 = new ControlScreen();
  size(1400, 800);
  stroke(255);
  rectMode(CENTER);
  textAlign(CENTER);
}

void draw() {
  background(0);
  startscreen2.move();
  controlscreen2.display();
}

