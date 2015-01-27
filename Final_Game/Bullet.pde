class Bullet {
  PVector vel;
  PVector loc;
  float speed;
  Bullet() {
    loc=new PVector(0, 0);
    vel=new PVector(0, 0);
    speed= 10;
  }

  void display(float uf1, float uf2, float uf3) {
    fill(255, 0, 0);
    loc.x=uf1+cos(uf3/180*PI)*speed;
    loc.y=uf2+sin(uf3/180*PI)*speed;
    ellipse(loc.x, loc.y, 50, 50);
  }
}

