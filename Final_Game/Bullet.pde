class Bullet {
  PVector vel;
  PVector loc;
  Bullet() {
    loc=new PVector(0, 0);
    vel=new PVector(0, 0);
  }

  void display(float x, float y, float bren, float dan) {
    fill(255, 0, 0);
    loc.set(x, y, 0);
    vel.set(bren, dan, 0);
    loc.add(vel);
    ellipse(loc.x, loc.y, 50, 50);
  }
}

