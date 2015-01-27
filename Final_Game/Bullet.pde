class Bullet {
  PVector vel;
  PVector loc;
  Bullet(UFO other) {
    loc=new PVector(other.loc.x, other.loc.y);
    vel=new PVector(0, 0);
  }

  void display() {
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, 20, 20);
  }

  void move() {
    loc.add(ufo.vel.x, ufo.vel.y, 0);
  }
}

