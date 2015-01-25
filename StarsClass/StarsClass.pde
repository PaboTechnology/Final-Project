class StartScreen {
  int count = 500;
  int s;
  PVector[] location = new PVector[count];
  PVector[] velocity = new PVector[count];
  PVector[] acceleration = new PVector[count];
  float[] dia = new float[count];
  PImage Star;

  StartScreen() {
    Star = loadImage("Star.png");
  }
  void display() {
    for (int s = 0; s<count; s++) {
      dia[s] = random(5, 10);
      acceleration[s] = new PVector(0, .2);
      location[s] = new PVector(random(width), random(-height*3, -dia[s]/2));
      velocity[s] = new PVector(0, random(0));
    }
  }
  void move() {
    for (int s = 0; s<count; s++) {
      velocity[s].add(acceleration[s]);
      location[s].add(velocity[s]);
      velocity[s].limit(3);
      acceleration[s].x = random(0);
    
      pushMatrix();
      translate(location[s].x, location[s].y);
      image(Star, 0, 0, dia[s], dia[s]);
      popMatrix();

      if (location[s].y-dia[s]/2 > height) {
        location[s].set(random(width), random(-height, -dia[s]/2));
        velocity[s].set(0, 2);
      }
    }
  }
}
