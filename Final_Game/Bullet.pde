class Bullet {
  PVector vel;
  PVector loc;
  int theta;
  Bullet() {
    loc=new PVector(0, 0);
    vel=new PVector(0, 0);
  }

  void display() {
    fill(255,0,0);
    ellipse(loc.x, loc.y,20,20);
  }

  void move() {
    loc.add(ufo.vel.x, ufo.vel.y,0);
  }
}

