class P2UFO {
  PImage SpaceShip;
  float x;
  float y;
  float dy;
  float dx;
  float easing;
  float r;
    P2UFO() {
    SpaceShip= loadImage("GreenSpaceShip.png");
    easing=.01;
  }

  void display() {
    pushMatrix();
    translate(x,y);
    rotate(r-300);
    image(SpaceShip, 0, 0);
    SpaceShip.resize(50, 57);
    popMatrix();
  }

  void move() {
    r= atan2(mouseY-y, mouseX-x);
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

