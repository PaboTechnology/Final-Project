boolean button = false;

int bx = 367;
int by = 600;
int bw = 666;
int bh = 100;

void mousePressed() {
  if (mouseX > bx && mouseX < bx+bw && mouseY > by && mouseY < by+bh) {
    button =!button;
  }
}
