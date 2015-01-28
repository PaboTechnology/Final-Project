class P2Bullet {
  PVector vel;
  PVector loc;
  int sz;
  int totaltime;
  boolean gwin;

  P2Bullet(P2UFO other) {
    loc=new PVector(other.loc.x, other.loc.y);
    vel=new PVector(other.vel.x, other.vel.y);
    vel.mult(3);
    sz = 10;
    gwin=false;
  }

  void display() {
    fill(0, 122, 0);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    totaltime++;
    loc.add(vel);
  }

  void kill(UFO other) {
    if (loc.dist(other.loc)<sz/2+other.sz/2) {
      gwin=true;
    }
  }
  void life(P2Bullet b) {
    if (b.totaltime>=400) {
      p2bull.remove(b);
    }
  }
}

