class Grid {
  boolean selected = false;
  boolean wrong = false;
  boolean Static = false;
  float x;
  float y;
  float s;
  int num = 0;
  color c;

  Grid(float _x, float _y, float _s) {
    x = _x;
    y = _y;
    s = _s;
  }

  void setNum(int n) {
    num = n;
    if (n!=0)
      Static = true;
  }

  void display() {
    if (wrong)
      fill(255, 100, 150);
    else if (Static)
      fill(200);
    else
      fill(255);
    if (selected) {
      strokeWeight(3);
    } else {
      strokeWeight(1);
    }
    stroke(0);
    rectMode(CORNER);
    rect(x, y, s, s);
    textAlign(CENTER, CENTER);
    textSize(s/2);
    if (Static)
      fill(0);
    else
      fill(125);
    inputnum();
    if (num != 0)
      text(num, x+s/2, y+s/2);
    mousePressed();
  }

  void labels(int i) {
    textSize(s/1.5);
    textAlign(CENTER, CENTER);
    fill(125, 100);
    text(i, x+s/2, y+s/2);
  }

  void inputnum() {
    if (selected) {
      if (keyPressed) {
        if (key >= '0' && key <= '9') {
          num = key-48;
        }
        if (key == 27 || key == 32) {
          num = 0;
        }
      }
    }
  }

  void mousePressed() {
    if (mouseX > x && mouseX < x+s && mouseY > y && mouseY < y+s && mousePressed && Static == false) {
      selected = true;
    }
    if ((mouseX < x || mouseX > x+s || mouseY < y || mouseY > y+s) && mousePressed) {
      selected = false;
    }
  }
}

void RowCheck(int _i) {
  for (int i=_i; i<_i+8; i++) {
    for (int j=i+1; j<_i+9; j++) {
      if (box[i].num == box[j].num) {
        if (box[i].num > 0 && box[j].num >0) {
          box[i].wrong = true;
          box[j].wrong = true;
        }
      }
    }
  }
}

void ColumnCheck(int _i) {
  for(int i= _i; i<_i+64; i++ ) {
    for(int j = i+9; j<_i+72;j++) {
      if (box[i].num == box[j].num) {
        if (box[i].num > 0 && box[j].num >0) {
          box[i].wrong = true;
          box[j].wrong = true;
        }
      }
    }
  }
}
