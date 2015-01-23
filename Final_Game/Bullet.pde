class Bullet {
  PVector vel;
  PVector loc;
  int theta;
  Bullet() {
    loc=new PVector(0, 0);
    vel=new PVector(0, 0);
  }

  void display() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(theta);
    println(theta);
    fill(125);
    ellipse(loc.x, loc.y,10,10);
    popMatrix();
  }

  void move() {
    vel=PVector.fromAngle(theta-HALF_PI);
    loc.add(vel);
  }
}

