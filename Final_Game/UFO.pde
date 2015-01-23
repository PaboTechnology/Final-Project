class UFO {
  PImage SpaceShip;
  PVector loc;
  PVector vel;
  PVector acc;
  float theta;
  PVector direction;
  int speed;
  PVector bullet;

  UFO() {
    SpaceShip= loadImage("BlueSpaceShip.png");
    loc=new PVector(width/2, height/2);
    vel= new PVector(0, 0);
    acc= new PVector(.2, .2);
    direction= new PVector(0, 1);
    speed= 3;
    bullet=new PVector(0, 0);
  }

  void display() {  
    vel=PVector.fromAngle(theta-HALF_PI);
    for (int i=0; i<4; i++) {
      loc.add(vel);
    }
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(theta);
    image(SpaceShip, 0, 0);
    SpaceShip.resize(50, 57);
    println(theta);
    popMatrix();
  }

  void move() {
    if (keyPressed) {
      if (keyCode==LEFT) {
        theta-=.1;
      } else if (keyCode==RIGHT) {
        theta+=.1;
      }
    }
    if (keyPressed) {
      if (keyCode==UP) {
        loc.add(vel);
      } else if (keyCode==DOWN) {
        for (int i=0; i<4; i++) {
          loc.sub(vel);
        }
      }
    }
  }
}

