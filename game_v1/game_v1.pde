void setup() {
  fullScreen();
}

void draw() {
  background(0);
  textSize(900);
  textAlign(CENTER,CENTER);
  text("8",width/2,height/2-100);
  fill(100,100,255);
  noStroke();
  rect(675,662,35,67);
  devMode();
}

void devMode() {
  textSize(10);
  fill(255);
  text(mouseX+" "+mouseY,100,100);
}
