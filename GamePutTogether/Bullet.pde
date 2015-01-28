class Bullet {
  //  declare variables
  PVector vel;
  PVector loc;
  int sz;
  int totaltime;
  boolean bwin;

  Bullet(UFO other) {
    //   intitialize variables
    loc=new PVector(other.loc.x, other.loc.y);
    vel=new PVector(other.vel.x, other.vel.y);
    vel.mult(5);
    sz = 10;
    bwin=false;
  }

  void display() {
    //    create blue bullet
    fill(0, 0, 200);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    //    lifetime and movement of bullet
    totaltime++;
    loc.add(vel);
  }

  void kill(P2UFO other) {
    //    if the bullet touches the ufo, then blue wins
    if (loc.dist(other.loc)<sz/2+other.sz/2) {
      bwin=true;
    }
  }

  void life(Bullet b) {
    //    lifespan of the bullet
    if (b.totaltime>=400) {
      bull.remove(b);
    }
  }
}

