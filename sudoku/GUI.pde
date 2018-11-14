
void InitializeGUI() {
  x = 400;
  y = 100;
  s = 50;
  box = new Grid[82];
  for (int i = 0; i < box.length; i++ ) {
    box[i] = new Grid(x, y, s);
    x+=s;
    if (i%9 == 0) {
      x = 400;
      y+=s;
    }
  }
}

void drawGUI() {
  background(0);
  for (int i = 1; i< box.length; i++ ) {
    box[i].display();
    box[i].labels(i);
  }
  drawLines();
}

void drawLines() {
  strokeWeight(3);
  fill(0);
  line(box[1].x,box[1].y,box[9].x+box[9].s,box[9].y); // top edge
  line(box[73].x,box[73].y+box[73].s,box[81].x+box[81].s,box[81].y+box[81].s); // bottom edge
  line(box[1].x,box[1].y,box[1].x,box[73].y+box[1].s); // left edge
  line(box[9].x+box[9].s,box[9].y,box[9].x+box[9].s,box[73].y+box[1].s); // right edge
  line(box[1].x,box[28].y,box[9].x+box[1].s,box[28].y); // top divider
  line(box[1].x,box[55].y,box[9].x+box[1].s,box[55].y);  // bottom divider
  line(box[4].x,box[1].y,box[4].x,box[73].y+box[1].s); // left divider
  line(box[7].x,box[1].y,box[7].x,box[73].y+box[1].s); // right divider
}
