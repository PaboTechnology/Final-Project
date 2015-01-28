//Main Game
UFO ufo;
P2UFO UFO;
Wall wall;
StartScreen startscreen2;
ControlScreen controlscreen2;
//Declare variables;
ArrayList<Bullet> bull;
ArrayList<P2Bullet> p2bull;
int shootTime=20;
boolean main;
PImage gbomb;
PImage bbomb;

void setup() {
  // Initialize Classes and Variables
  startscreen2 = new StartScreen();
  controlscreen2 = new ControlScreen();
  gbomb= loadImage("GreenNuke.png");
  bbomb= loadImage("BlueNuke.png");
  rectMode(CENTER);
  textAlign(CENTER);
  wall=new Wall();
  size(1400, 800);
  ufo=new UFO();
  UFO=new P2UFO();
  bull=new ArrayList<Bullet>();
  p2bull=new ArrayList<P2Bullet>();
  main = true;
}

void draw() {
// make main game start at titlescreen
  if (main==true) {
    background(0);
    startscreen2.move();
    controlscreen2.display();
  }
//  make game go to play
  else {
    background(0);
//    use classes for game
    wall.display();
    ufo.display();
    ufo.move();
    UFO.display();
    UFO.move();
//    Arraylist of blue ufo bullets
    for (int i=0; i<bull.size (); i++) {
      Bullet b=bull.get(i);
      b.display(); 
      b.move();
      wall.ball(b);
      b.kill(UFO);
//    if bullet hits then game over
      if (b.bwin) {
        image(bbomb,b.loc.x-300, b.loc.y-300);
        text("GAME OVER, BLUE WINS!", width/2, height/2);
        noLoop();
      }
//      lifetime of bullet
      b.life(b);
//      make bullet bounce off walls
      if (wall.l3 == wall.wall) {
        b.vel.x*=-1;
      }
      if (wall.r3 == wall.wall) {
        //      bull.remove(b);
        b.vel.x*=-1;
      }
      if (wall.t3 == wall.wall) {
        //      bull.remove(b);
        b.vel.y*=-1;
      }
      if (wall.b3 == wall.wall) {
        //      bull.remove(b);
        b.vel.y*=-1;
      }
    }
//    arraylist of green ufo bullets
    for (int i=0; i<p2bull.size (); i++) {
      P2Bullet b= p2bull.get(i);
      b.display();
      b.move();
      wall.ball2(b);
      b.kill(ufo);
//    if bullet hits then game over
      if (b.gwin) {
        image(gbomb, b.loc.x-300, b.loc.y-300);
        text("GAME OVER, GREEN WINS!", width/2, height/2);
        noLoop();
      }
//      lifetime of bullet
      b.life(b);
//      make bullet bounce off walls
      if (wall.l4 == wall.wall) {
        b.vel.x*=-1;
      }
      if (wall.r4 == wall.wall) {
        //      bull.remove(b);
        b.vel.x*=-1;
      }
      if (wall.t4 == wall.wall) {
        //      bull.remove(b);
        b.vel.y*=-1;
      }
      if (wall.b4 == wall.wall) {
        //      bull.remove(b);
        b.vel.y*=-1;
      }
    }
  }
}

void keyPressed() {
//  function to shoot blue bullet
  if (bull.size()<=2) {
    if (key=='m') {
      bull.add(new Bullet(ufo));
    }
  }
}
void mousePressed() {
//  function to change title screens and shoot green bullets
  if (p2bull.size()<=2) {
    p2bull.add(new P2Bullet(UFO));
  }
  if (main) {
    if (mouseX > bx && mouseX < bx+bw && mouseY > by && mouseY < by+bh || mouseX > b2x && mouseX < b2x+b2w && mouseY > b2y && mouseY < b2y+b2h) {
      button =true;
    }
    if (button==true) {
      if (mouseX>500 && mouseX<900 && mouseY>600 && mouseY<700) {
        button2=true;
        main=false;
      }
    }
  }
}

