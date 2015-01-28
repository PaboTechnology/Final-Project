class P2Bullet {
  PVector vel;
  PVector loc;
  int sz;

  P2Bullet(P2UFO other) {
    loc=new PVector(other.loc.x, other.loc.y);
    vel=new PVector(other.vel.x, other.vel.y);
    vel.mult(3);
    sz = 10;
  }

  void display() {
    fill(0, 122, 0);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void kill(UFO other) {
    if (loc.dist(other.loc)<sz/2+other.sz/2) {
      println("green wins!!");
    }
  }
}

