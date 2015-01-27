class ControlScreen {
  PImage Arrows;
  PImage ArrowDOWN;
  PImage ArrowUP;
  PImage ArrowLEFT;
  PImage ArrowRIGHT;
  PImage MKey;
  PImage MKeyGREEN;
  PImage Mouse;
  PImage MouseGREEN;
  int ArrowSZ;
  int MouseSZx;
  int MouseSZy;
  int MkeySZ;
  int a1;
  int a2;
  int x;
  int y;
  int w;
  int h;


  ControlScreen() {
    stroke(255);
    rectMode(CENTER);
    textAlign(CENTER);
    Arrows = loadImage("Arrowkeys.png");
    ArrowDOWN = loadImage("ArrowkeysDOWN.png");
    ArrowUP = loadImage("ArrowkeysUP.png");
    ArrowLEFT = loadImage("ArrowkeysLEFT.png");
    ArrowRIGHT = loadImage("ArrowkeysRIGHT.png");
    MKey = loadImage("MKey.png");
    MKeyGREEN = loadImage("MKeyGreen.png");
    Mouse = loadImage("Mouse.png");
    MouseGREEN = loadImage("MouseGREEN.png");
    ArrowSZ = 275;
    MouseSZx = 150;
    MouseSZy = 250;
    MkeySZ = 65;
    a1 = 10;
    a2 = 20;
    x = 700;
    y = 650;
    w = 666;
    h = 100;
  }

  void display() {
    //If button is true(pressed)...
    if (button) {
      //make button go away by setting new location off screen
      bx=width*2;
      by=height*2;

      //load arrow key image
      image(Arrows, width/8, height/3, ArrowSZ, ArrowSZ);

      //if down key is pressed, down arrow turns and stays green
      if (keyCode == DOWN) {
        image(ArrowDOWN, width/8, height/3, ArrowSZ, ArrowSZ);
      }

      //if up key is pressed, up arrow turns and stays green
      if (keyCode == UP) {
        image(ArrowUP, width/8, height/3, ArrowSZ, ArrowSZ);
      }

      //if left key is pressed, left arrow turns and stays green
      if (keyCode == LEFT) {
        image(ArrowLEFT, width/8, height/3, ArrowSZ, ArrowSZ);
      }

      //if down key is pressed, down arrow turns and stays green
      if (keyCode == RIGHT) {
        image(ArrowRIGHT, width/8, height/3, ArrowSZ, ArrowSZ);
      }

      //load image of mouse
      image(Mouse, width/10*7, height/3, MouseSZx, MouseSZy);

      //if left-click/right-click is pressed, mouse keys turn green
      if (mousePressed == true) {
        image(MouseGREEN, width/10*7, height/3, MouseSZx, MouseSZy);
      }

      //load m key
      image(MKey, width/4, height/5*2, MkeySZ, MkeySZ);

      //if m or M is pressed, m key turns green
      if (key == 'm' || key =='M') {
        image(MKeyGREEN, width/4, height/5*2, MkeySZ, MkeySZ);
      }

      //Player 1 controls text
      fill(128);
      rect(width/4, height/4, 400, 100);
      fill(192);
      rect(width/4, height/4, 380, 80);
      fill(0);
      textSize(40);
      text("Player 1 Controls", width/4, height/4);

      //Player 2 controls text
      fill(128);
      rect(width/4*3, height/4, 400, 100);
      fill(192);
      rect(width/4*3, height/4, 380, 80);
      fill(0);
      textSize(40);
      text("Player 2 Controls", width/4*3, height/4);
//      if (button2) {
//        b2x=width*2;
//        b2y=height*2;
//        fill(128);
//        rect(width/2, height/16*13, 400, 100);
//        fill(192);
//        rect(width/2, height/16*13, 380, 80);
//        fill(0);
//        textAlign(CENTER);
//        textSize(70);
//        text("Ready?", width/2, 675);
//      } else {
//        background(255);
//      }
    } else {
      //button, click to start background
      fill(128);
      rect(x, y, w, h);
      fill(192);
      rect(x, y, w-a2, h-a2);
      fill(0);
      textAlign(CENTER);
      textSize(70);
      text("Click here to Start", width/2, 675);

      //background for alien attackers
      fill(128);
      quad(width/4, height/8*3, width/4*3, height/8*3, width/3*2, height/8*5, width/3, height/8*5);
      fill(192);
      quad(width/4+a2, height/8*3+a1, width/4*3-a1, height/8*3+a1, width/3*2-a1, height/8*5-a1, width/3+a1, height/8*5-a1);
      fill(0);
      textAlign(CENTER);
      textSize(70);
      text("Alien Attackers", width/2, height/2);
    }
  }
}

