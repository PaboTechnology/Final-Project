int count = 500;
PVector[] location = new PVector[count];
PVector[] velocity = new PVector[count];
PVector[] acceleration = new PVector[count];
float[] dia = new float[count];
PImage Star;
PImage Arrows;
PImage WASD;

void setup() {
  size(1400, 800);
  stroke(255);

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
    //Load arrow key for player 1 controls
    Arrows = loadImage("Arrowkeys.png");
    image(Arrows, width/8+20, height/3, 275, 275);

    //Load WASD keys for player 2 controls
    WASD = loadImage("WASDkeys.png");
    image(WASD, width/6*4+40, height/3+50, 200, 150);

    fill(128);
    //Player 1 background
    rect(width/10, height/4, 400, 100);
    //Player 2 background
    rect(860, height/4, 400, 100);
    fill(192);
    //Player 1 top
    rect(width/10+10, height/4+10, 380, 80);
    //player 2 top
    rect(870, height/4+10, 380, 80);
    
    //Controls text
    fill(0);
    textAlign(CENTER);
    textSize(40);
    text("Player 1 Controls", width/4, height/3);
    text("Player 2 Controls", width/4*3,height/3);
  } else {
    background(0);
    fill(128);
    //button
    rect(x, y, w, h);
    //background for words
    quad(width/4, height/8*3, width/4*3, height/8*3, width/3*2, height/8*5, width/3, height/8*5);
    fill(192);
    quad(width/4+20, height/8*3+10, width/4*3-20, height/8*3+10, width/3*2-10, height/8*5-10, width/3+10, height/8*5-10);
    rect(x+10, y+10, w-20, h-20);
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

