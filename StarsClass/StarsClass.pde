class StartScreen {
  int count = 500;
  PVector[] location = new PVector[count];
  PVector[] velocity = new PVector[count];
  PVector[] acceleration = new PVector[count];
  float[] dia = new float[count];
  PImage Star;

  StartScreen() {
    Star = loadImage("Star.png");

    for (int s = 0; s<count; s++) {
      dia[s] = random(5, 10);
      acceleration[s] = new PVector(0,0);
      location[s] = new PVector(random(0, 1400), random(-height*10, -dia[s]/2));
      velocity[s] = new PVector(0, random(0));
    }
  }
  void display() {
  }
  void move() {
    for (int s = 0; s<count; s++) {
      velocity[s].add(acceleration[s]);
      location[s].add(velocity[s]);
      velocity[s].limit(3);
      acceleration[s].x = random(0);
      acceleration[s].y = random(.2);

      pushMatrix();
      translate(location[s].x, location[s].y);
      image(Star, location[s].x, location[s].y, dia[s], dia[s]);
      popMatrix();

      if (location[s].y-dia[s]/2 > height) {
        location[s].set(random(width), random(-height, -dia[s]/2));
        velocity[s].set(0, 2);
      }
    }
  }
}

