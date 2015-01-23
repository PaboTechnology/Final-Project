class P2UFO {
  PImage SpaceShip;
  float x;
  float y;
  float dy;
  float dx;
  float easing;
    P2UFO() {
    SpaceShip= loadImage("GreenSpaceShip.png");
    easing=.005;
  }

  void display() {
    image(SpaceShip, x, y);
    SpaceShip.resize(30, 35);
  }

  void move() {
    float targetX = mouseX;
    dx = targetX - x;
    if (abs(dx) > 1) {
      x += dx * easing;
    }
    float targetY = mouseY;
    float dy = targetY - y;
    if (abs(dy) > 1) {
      y += dy * easing;
    }
    x+= dx*easing;
    y+= dy*easing;
  }
}

