Grid box[];
boolean completed = false;
float x;
float y;
float s;

void setup() {
  fullScreen();
  InitializeGUI();
  setInitialValues();
}

void draw() {
  drawGUI();
  checkComplete();
  for(int i=1; i< 9; i++ ){
    RowCheck(1);
  }
}

void setInitialValues() {
  int[] n = {8,0,0,0,0,0,4,6,0,0,0,0,0,0,1,5,0,0,0,0,0,0,5,7,0,0,1,0,1,8,7,9,3,6,4,5,0,6,0,0,2,0,7,0,0,3,0,5,1,0,0,0,9,0,0,0,0,0,0,8,0,7,9,5,0,9,3,0,0,0,0,4,0,0,7,0,0,2,0,5,0};
  for(int i=1; i<box.length;i++) {
    box[i].setNum(n[i-1]);
  }
}

void checkComplete() {
  for(int i=1; i< box.length;i++){
    if(box[i].num == 0) completed = false;
    else completed = true;
  }
}
