Level[] level = new Level[3];
float[] yPos = new float[3];
float[] amp = new float[3];
void setup() {
  size (600, 600);
  yPos[0] = 0;
  yPos[1] = 150;
  yPos[2] = 300;
  amp[0] = 20;
  amp[1] = 15;
  amp[2] = 5;
  for (int x = 0; x < 3; x++) {
    level[x] = new Level(yPos[x]);
  }
}

void draw() {
  background(0);
  //mask image
  //image(water, 0, 0);
  //image(rock2, 0, 360);
  //image(rock1, 0, 500);

    //if (mouseY > 200 && mouseY < 225) {
    //  mouseNear1 = true;
    //} else {
    //  mouseNear1 = false;

    level[0].calc1(amp[0]* 2.44);
    level[0].renderWave();
     level[1].calc2(amp[1]);
    level[1].renderWave();
    level[2].calc3(amp[1] * .3);
    level[2].renderWave();

}