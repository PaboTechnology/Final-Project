class UFO {
  PImage SpaceShip;
  PVector loc;
  PVector vel;
  float theta;
  PVector el;
  boolean movex;
  boolean movey;

  UFO() {
    SpaceShip= loadImage("BlueSpaceShip.png");
    loc=new PVector(width/2, height/2);
    vel= new PVector(0, 0);
    el= new PVector(-.3, 5);
    movex=true;
    movey=true;
  }

  void display() {
    if (movex) {
      vel=PVector.fromAngle(theta-HALF_PI);
      for (int i=0; i<3; i++) {
        loc.x+=vel.x;
      }
    }
    if (movey) {
      for (int i=0; i<3; i++) {
        loc.y+=vel.y;
      }
    }
    pushMatrix();
    translate(loc.x, loc.y);
    ellipse(el.x, el.y, 50, 50);
    rotate(theta);
    fill(255, 0, 0);
    image(SpaceShip, 0, 0);
    SpaceShip.resize(50, 57);
    //    println(theta);
    if (wall.l == wall.wall) {
      movex=!movex;
    } else {
      movex=movex;
      //      println("not");
    }
    if (wall.r == wall.wall) {
      movex=!movex;
      //      println("touching wall!!") ;
    } else {
      movex=movex;
      //      println("not");
    }
    if (wall.t == wall.wall) {
      //      println("touching wall!!") ;
      movey=!movey;
    } else {
      movex=movex;
      //      println("not");
    }
    if (wall.b == wall.wall) {
      //      println("touching wall!!") ;
      movey=!movey;
    } else {
      movex=movex;
      //      println("not");
    }
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

