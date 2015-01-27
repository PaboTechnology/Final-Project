class Bullet {
  PVector vel;
  PVector loc;
  float speed;
  float rotation;
  Bullet() {
    loc=new PVector(0, 0);
    vel=new PVector(0, 0);
    speed=20;
    rotation = atan2(mouseY - UFO.y, mouseX - UFO.x) / PI * 180;
  }

  void display(float uf1, float uf2, float uf3) {
    fill(255, 0, 0);
    loc.x=uf1+cos(rotation/180*PI)*speed;
    loc.y=uf2+sin(rotation*PI)*speed;
    ellipse(loc.x, loc.y, 50, 50);
    println("shoot time = " + owen.shootTime + " /nBall location = " + loc);
  }
}

