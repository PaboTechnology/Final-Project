class P2UFO {
  PImage SpaceShip;
  PVector loc;
  float dy;
  float dx;
  PVector vel;
  float easing;
  float r;
  PVector pab;
  int sz;
  P2UFO() {
    loc=new PVector(width/3, 60);
    SpaceShip= loadImage("Green Spaceshipp.png");
    easing=.005;
    pab=new PVector(-.3, 3);
    vel=new PVector(dx*easing, dy*easing);
    sz = 50;
  }

  void display() {
    pushMatrix();
    translate(loc.x, loc.y);
    fill(0,255,0);
    ellipse(pab.x, pab.y, sz, sz);
    rotate(r-300);
    image(SpaceShip, -25, -23);
    SpaceShip.resize(sz, 57);
    popMatrix();
  }

  void move() {
    r= atan2(mouseY-loc.y, mouseX-loc.x);
    float targetX = mouseX;
    float targetY = mouseY;
    dx = targetX - loc.x;
    dy = targetY - loc.y;
    vel.set(dx*easing, dy*easing);
    if (abs(dx) > 1) {
      loc.x += dx * easing;
    }
    if (abs(dy) > 1) {
      loc.y += dy * easing;
    }
    loc.x+= vel.x;
    loc.y+= vel.y;
    if (wall.l2 == wall.wall) {
      loc.x+=10;
    }
    if (wall.r2 == wall.wall) {
      loc.x-=10;
    }
    if (wall.t2 == wall.wall) {
      loc.y+=10;
    }
    if (wall.b2 == wall.wall) {
      loc.y-=10;
    }
  }
}

