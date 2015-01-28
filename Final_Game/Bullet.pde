class Bullet {
  PVector vel;
  PVector loc;
  Bullet(UFO other) {
    loc=new PVector(other.loc.x, other.loc.y);
    vel=new PVector(other.vel.x, other.vel.y);
    vel.mult(5);
  }

  void display() {
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, 10, 10);
  }

  void move() {
    loc.add(vel);
  }
}

