boolean button = false;
boolean button2 = false;

int bx = 367;
int by = 600;
int bw = 666;
int bh = 100;

int b2x = 500;
int b2y = 600;
int b2w = 400;
int b2h = 100;

void mousePressed() {
  //if the area between these parameter's is clicked by mouse, button = true
  if (mouseX > bx && mouseX < bx+bw && mouseY > by && mouseY < by+bh || mouseX > b2x && mouseX < b2x+b2w && mouseY > b2y && mouseY < b2y+b2h) {
    button =!button;
    button2 = !button2;
  }
}
