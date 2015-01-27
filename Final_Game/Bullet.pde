class Bullet {
  PVector vel;
  PVector loc;
  Bullet(UFO other) {
    loc=new PVector(other.loc.x, other.loc.y);
    vel=new PVector(other.vel.x, other.vel.y);
    vel.mult(1);
  }

  void display() {
    fill(255, 0, 0);
    ellipse(loc.x, loc.y, 10, 10);
  }

  void move(Bullet col) {
    loc.add(vel);
    if (wall.l3 == wall.wall) {
      col.loc.x-=3;
      col.vel.x*=-1;
    }
    if (wall.r3 == wall.wall) {
      col.loc.x-=3;
      vel.x*=-abs(vel.x);
    }
    if (wall.t3 == wall.wall) {
      col.loc.y+=3;
      col.vel.y*=-1;
    }
    if (wall.b3 == wall.wall) {
      col.loc.y-=3;
      col.vel.y*=-1;
    }
  }
}

