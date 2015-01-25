StartScreen startscreen2;
ControlScreen controlscreen2;

void setup() {
  startscreen2 = new StartScreen();
  controlscreen2 = new ControlScreen();
  size(1000,600);
  stroke(255);
  rectMode(CENTER);
  textAlign(CENTER);
}

void draw() {
  startscreen2.display();
  startscreen2.move();
  controlscreen2.display();
}
