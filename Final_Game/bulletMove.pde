class move{
  boolean shoot=true;
  int shootTime=20;
  
  move(){
  }
  
  void update(){
    if (keyPressed) {
      if (key=='m') {
        if (shoot) {
          bull.add(new Bullet());
          shoot=false;
          shootTime=0;
        }
      }
    }
    if (shoot==false) {
      shootTime++;
    }
    if (shootTime==20) {
      shoot=true;
    }
  }
}
