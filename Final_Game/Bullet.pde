class Bullet {
  PVector vel;
  PVector loc;
  int sz;
  int totaltime;

  Bullet(UFO other) {
    loc=new PVector(other.loc.x, other.loc.y);
    vel=new PVector(other.vel.x, other.vel.y);
    vel.mult(5);
    sz = 10;
  }

  void display() {
    fill(0, 0, 200);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    totaltime++;
    loc.add(vel);
  }

  void kill(P2UFO other) {
    if (loc.dist(other.loc)<sz/2+other.sz/2) {
      println("blue wins!!");
    }
  }

  void life(Bullet b) {
    if (b.totaltime>=400) {
      bull.remove(b);
    }
  }
}

