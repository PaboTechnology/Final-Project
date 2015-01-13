boolean button = false;

int x = 367;
int y = 600;
int w = 666;
int h = 100;

// When the mouse is pressed, the state of the button is toggled.  
void mousePressed(){
if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
  button =!button;
}
}
