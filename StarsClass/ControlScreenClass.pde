class ControlScreen {
  PImage Arrows;
  PImage ArrowDOWN;
  PImage ArrowUP;
  PImage ArrowLEFT;
  PImage ArrowRIGHT;
  PImage MKeyGREEN;
  PImage MKey;
  PImage Mouse;
  PImage MouseGREEN;
  int x = 700;
  int y = 650;
  int w = 666;
  int h = 100;


  ControlScreen() {
    stroke(255);
    rectMode(CENTER);
    textAlign(CENTER);
    Arrows = loadImage("Arrowkeys.png");
    Mouse = loadImage("Mouse.png");
    MouseGREEN = loadImage("MouseGREEN.png");
    MKey = loadImage("MKey.png");
    MKeyGREEN = loadImage("MKeyGreen.png");
    ArrowDOWN = loadImage("ArrowkeysDOWN.png");
    ArrowUP = loadImage("ArrowkeysUP.png");
    ArrowLEFT = loadImage("ArrowkeysLEFT.png");
    ArrowRIGHT = loadImage("ArrowkeysRIGHT.png");
  }

  void display() {
    //If button is pressed...
    if (button) {
      //make button go away by setting new location off screen
      bx=width*2;
      by=height*2;
      
      //load arrow key image
      image(Arrows, width/8, height/3, 275, 275);
      
      //if down key is pressed, down arrow turns and stays green
      if (keyCode == DOWN) {
        image(ArrowDOWN, width/8, height/3, 275, 275);
      }
      
      //if up key is pressed, up arrow turns and stays green
      if (keyCode == UP) {
        image(ArrowUP, width/8, height/3, 275, 275);
      }
      
      //if left key is pressed, left arrow turns and stays green
      if (keyCode == LEFT) {
        image(ArrowLEFT, width/8, height/3, 275, 275);
      }
      
      //if down key is pressed, down arrow turns and stays green
      if (keyCode == RIGHT) {
        image(ArrowRIGHT, width/8, height/3, 275, 275);
      }
      
      //load image of mouse
      image(Mouse, width/6*4+40, height/3, 150, 250);
      
      //if left-click/right-click is pressed, mouse keys turn and green
      if (mousePressed == true) {
        image(MouseGREEN, width/6*4+40, height/3, 150, 250);
      }
      
      //load m key
      image(MKey, width/4, height/3+57, 65, 65);
      if (key == 'm' || key =='M') {
        image(MKeyGREEN, width/4, height/3+57, 65, 65);
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
    } else {
      fill(128);
      //button
      rect(x, y, w, h);
      //background for words
      quad(width/4, height/8*3, width/4*3, height/8*3, width/3*2, height/8*5, width/3, height/8*5);
      fill(192);
      quad(width/4+20, height/8*3+10, width/4*3-20, height/8*3+10, width/3*2-10, height/8*5-10, width/3+10, height/8*5-10);
      rect(x, y, w-20, h-20);
      fill(0);
      textAlign(CENTER);
      textSize(70);
      text("Alien Attackers", width/2, height/2);
      text("Click here to Start", width/2, 675);
    }
  }
}

