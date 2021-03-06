class UFO {
  PImage SpaceShip;
  PVector loc;
  PVector vel;
  float theta;
  PVector el;
  int sz;

  UFO() {
    SpaceShip= loadImage("Blue Spaceshipp.png");
    loc=new PVector(width/2, height/2);
    vel= new PVector(0, 0);
    el= new PVector(-.3, 5);
    sz = 50;
  }

  void display() {
    el.set(-.3, 5);
    vel=PVector.fromAngle(theta-HALF_PI);
    for (int i=0; i<3; i++) {
      loc.add(vel);
    }

    pushMatrix();
    translate(loc.x, loc.y);
    fill(0);
    ellipse(el.x, el.y, sz, sz);
    rotate(theta);
    image(SpaceShip, 0, 0);
    SpaceShip.resize(sz, 57);
    popMatrix();
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

