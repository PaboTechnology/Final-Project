class UFO {
  PImage SpaceShip;
  PVector loc;
  PVector vel;
  PVector acc;
  float theta;
  PVector direction;
  float forward;
  float backward;
  int speed;

  UFO() {
    SpaceShip= loadImage("BlueSpaceShip.png");
    loc=new PVector(width/2,height/2);
    vel= new PVector(0, 0);
    acc= new PVector(.2, .2);
    direction= new PVector(0, 1);
    speed= 3;
  }

  void display() {  
    vel=PVector.fromAngle(theta-HALF_PI);
    loc.add(vel);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(theta);
    image(SpaceShip, 0,0);
    SpaceShip.resize(30, 35);
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
        forward=1;
      } else if (keyCode==DOWN) {
        backward=-1;
      }
    }
  }
}
