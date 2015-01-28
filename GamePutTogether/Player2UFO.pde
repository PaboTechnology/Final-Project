class P2UFO {
  PImage SpaceShip;
  float x;
  float y;
  float dy;
  float dx;
  float easing;
  float r;
  PVector pab;
  P2UFO() {
    SpaceShip= loadImage("Green Spaceshipp.png");
    easing=.005;
    pab=new PVector(-.3, 5);
  }

  void display() {
    pushMatrix();
    translate(x, y);
    ellipse(pab.x, pab.y, 50, 50);
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
    if (wall.l2 == wall.wall) {
      x+=10;
    }
    if (wall.r2 == wall.wall) {
      x-=10;
    }
    if (wall.t2 == wall.wall) {
      y+=10;
    }
    if (wall.b2 == wall.wall) {
      y-=10;
    }
  }
}

