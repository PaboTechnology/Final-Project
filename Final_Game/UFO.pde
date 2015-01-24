class UFO {
  PImage SpaceShip;
  PVector loc;
  PVector vel;
  PVector acc;
  float theta;
  PVector direction;
  int speed;
  PVector bullet;
  PVector el;

  UFO() {
    SpaceShip= loadImage("BlueSpaceShip.png");
    loc=new PVector(width/2, height/2);
    vel= new PVector(0, 0);
    acc= new PVector(.2, .2);
    direction= new PVector(0, 1);
    speed= 3;
    el= new PVector(-.3, 5);
  }

  void display() {
    vel=PVector.fromAngle(theta-HALF_PI);
    for (int i=0; i<3; i++) {
      loc.add(vel);
    }
    pushMatrix();
    translate(loc.x, loc.y);
    ellipse(el.x, el.y, 50, 50);
    rotate(theta);
    fill(255, 0, 0);
    image(SpaceShip, 0, 0);
    SpaceShip.resize(50, 57);
    //    println(theta);
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
        for (int i=0; i<3; i++) {
          loc.add(vel);
        }
      }
    } else if (keyCode==DOWN) {
      for (int i=0; i<3; i++) {
        loc.sub(vel);
      }
    }
  }
}

