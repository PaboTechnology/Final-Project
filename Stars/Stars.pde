int count = 500;
PVector[] location = new PVector[count];
PVector[] velocity = new PVector[count];
PVector[] acceleration = new PVector[count];
float[] dia = new float[count];
PImage Star;
PImage Arrows;
PImage ArrowDOWN;
PImage ArrowUP;
PImage ArrowLEFT;
PImage ArrowRIGHT;
PImage MKeyGREEN;
PImage MKey;
PImage Mouse;
PImage MouseGREEN;



void setup() {
  size(1400, 800);
  stroke(255);
  rectMode(CENTER);
  textAlign(CENTER);
  
  //load stars
  Star = loadImage("Star.png");
  for (int s = 0; s<count; s++) {
    dia[s] = random(5, 10);
    acceleration[s] = new PVector(0, .2);
    location[s] = new PVector(random(width), random(-height*3, -dia[s]/2));
    velocity[s] = new PVector(0, random(0));
  }
}
void draw() {
  if (button) {
    background(0);
    x=width*5;
    y=height*5;

    ////////////////////////////////////////////////
    //Load arrow key for player 1 controls         
    Arrows = loadImage("Arrowkeys.png");          
    image(Arrows, width/8, height/3, 275, 275);
    ////////////////////////////////////////////////

    ////////////////////////////////////////////////
    //Load Mouse for player 2 controls
    Mouse = loadImage("Mouse.png");
    image(Mouse, width/6*4+40, height/3, 150, 250);
    ////////////////////////////////////////////////

    ////////////////////////////////////////////////
    //Load m key for player one shooting command
    MKey = loadImage("MKey.png");
    image(MKey, width/4, height/3+57, 65, 65);
    ////////////////////////////////////////////////

    ////////////////////////////////////////////////
    //When down key pressed, load green down arrow 
    if (keyCode == DOWN) {
      ArrowDOWN = loadImage("ArrowkeysDOWN.png");
      image(ArrowDOWN, width/8, height/3, 275, 275);
    }
    ////////////////////////////////////////////////

    ////////////////////////////////////////////////
    //When up key pressed, load green up arrow
    if (keyCode == UP) {
      ArrowUP = loadImage("ArrowkeysUP.png");
      image(ArrowUP, width/8, height/3, 275, 275);
    }
    ////////////////////////////////////////////////

    ////////////////////////////////////////////////
    //When left key pressed, load left up green arrow
    if (keyCode == LEFT) {
      ArrowLEFT = loadImage("ArrowkeysLEFT.png");
      image(ArrowLEFT, width/8, height/3, 275, 275);
    }
    ////////////////////////////////////////////////

    ////////////////////////////////////////////////
    //When right key pressed, load right green arrow
    if (keyCode == RIGHT) {
      ArrowRIGHT = loadImage("ArrowkeysRIGHT.png");
      image(ArrowRIGHT, width/8, height/3, 275, 275);
    }
    ////////////////////////////////////////////////

    ////////////////////////////////////////////////
    //If m key is pressed, load green m key
    if (key == 'm' || key =='M') {
      MKeyGREEN = loadImage("MKeyGreen.png");
      image(MKeyGREEN, width/4, height/3+57, 65, 65);
    }
    ////////////////////////////////////////////////

    ////////////////////////////////////////////////
    //If left mouse pressed, load left mouse green
    if (mousePressed == true) {
      MouseGREEN = loadImage("MouseGREEN.png");
      image(MouseGREEN, width/6*4+40, height/3, 150, 250);
    }
    ////////////////////////////////////////////////

    ////////////////////////////////////////////////
    //Player 1 controls text
    fill(128);
    rect(width/4, height/4, 400, 100);
    fill(192);
    rect(width/4, height/4, 380, 80);
    fill(0);
    textSize(40);
    text("Player 1 Controls", width/4, height/4);
    ////////////////////////////////////////////////

    ////////////////////////////////////////////////
    //Player 2 controls text
    fill(128);
    rect(width/4*3, height/4, 400, 100);
    fill(192);
    rect(width/4*3, height/4, 380, 80);
    fill(0);
    textSize(40);
    text("Player 2 Controls", width/4*3, height/4);
    ////////////////////////////////////////////////
    
  } else {
    background(0);
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

  //moves Stars
  for (int s = 0; s<count; s++) {
    velocity[s].add(acceleration[s]);
    location[s].add(velocity[s]);
    velocity[s].limit(3);
    acceleration[s].x = random(0);

    //draws stars
    pushMatrix();
    translate(location[s].x, location[s].y);
    image(Star, 0, 0, dia[s], dia[s]);
    popMatrix();

    //bottom to top
    if (location[s].y-dia[s]/2 > height) {
      location[s].set(random(width), random(-height, -dia[s]/2));
      velocity[s].set(0, 2);
    }
  }
}

