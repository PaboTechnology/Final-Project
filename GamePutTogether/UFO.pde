class UFO {
  //  declare variables
  PImage SpaceShip;
  PVector loc;
  PVector vel;
  float theta;
  PVector el;
  int sz;

  UFO() {
    //    initialize variables
    SpaceShip= loadImage("Blue Spaceshipp.png");
    loc=new PVector(width/2, height/2);
    vel= new PVector(0, 0);
    el= new PVector(-.3, 2);
    sz = 50;
  }

  void display() {
    //    get angle from theta which is changed with keys
    el.set(-.3, 5);
    vel=PVector.fromAngle(theta-HALF_PI);
    //    make grid move with vel
    for (int i=0; i<3; i++) {
      loc.add(vel);
    }
    //  put grid in loc and ufo at origin, only change loc
    //  with vel and ufo stays constant
    pushMatrix();
    translate(loc.x, loc.y);
    fill(0, 0, 255);
//    ellipse used for reference since it doesnt rotate
    ellipse(el.x, el.y, sz, sz);
    rotate(theta);
    image(SpaceShip, -25, -27);
    SpaceShip.resize(sz, 57);
    popMatrix();
//    if a wall is detected, make loc opposite way
    if (wall.l == wall.wall) {
      loc.x+=5;
    }
    if (wall.r == wall.wall) {
      loc.x-=5;
    }
    if (wall.t == wall.wall) {
      loc.y+=5;
    }
    if (wall.b == wall.wall) {
      loc.y-=5;
    }
  }

  void move() {
//    change theta for rotation
    if (keyPressed) {
      if (keyCode==LEFT) {
        theta-=.1;
      } else if (keyCode==RIGHT) {
        theta+=.1;
      }
    }
    if (keyPressed) {
      if (keyCode==DOWN) {
        for (int i=0; i<3; i++) {
          loc.sub(vel);
        }
      }
    }
  }
}

