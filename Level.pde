class Level {
  PGraphics maskGraphics1;
   PGraphics maskGraphics2;
      PGraphics maskGraphics3;
  int xspacing = 6;
  int w = width;
  float theta = 0.0; //start angle at 0
  float period = 400; // how many pixels before wave repeats
  float dx; //incrementing X
  float[] yValues; //height values for wave Ball
  float amplitude;
  float inc;
  boolean mouseNear1 = false;
  PImage rock1;
  PImage rock2;
    PImage rock3;
  PImage water;

  Level( float yPos) {
    inc = yPos;
    dx = (TWO_PI/ period) * xspacing; //circle/#itOCcurs * space 
    yValues = new float[w/xspacing];
    rock1 = loadImage("rock1.jpg");
  rock2 = loadImage("rock2.jpg");
    rock3 = loadImage("rock3.jpg");
  water = loadImage("water.jpg");
   maskGraphics1 = createGraphics(rock1.width, rock1.height);
   maskGraphics2 = createGraphics(rock2.width, rock2.height);
   maskGraphics3 = createGraphics(rock3.width, rock3.height);
     
  }

  void renderWave() {
    for (int i = 0; i < yValues.length; i++) {
      fill(102, 82, 40);
      ellipse(i*xspacing, height/3+yValues[i], 15, 15);
    }
  }

  void calc1(float amp) {
    amplitude = amp;
    //increment angle
    theta += 0.3;
    //for every X value, create a Y value
    float x = theta;
      for (int i = 0; i < yValues.length; i++) {
        yValues[i] = inc + sin(x)*(amplitude + 20);
        x+= dx;
          theta += 0.03;
        //Mask image
          maskGraphics1.beginDraw();
        //  maskGraphics.background(0); // this is just like background(0), but only works on the mask
          maskGraphics1.fill(255); // only draw in greyscale to the mask. 
          maskGraphics1.ellipse(x,yValues[i] + 200, 100, 100); 
      }
       rock1.mask(maskGraphics1);
          image(rock1, 0, 0);
    }
    
    void calc2(float amp) {
    amplitude = amp;
    //increment angle
    theta += 0.3;
    //for every X value, create a Y value
    float x = theta;
      for (int i = 0; i < yValues.length; i++) {
        yValues[i] = inc + sin(x)*(amplitude + 20);
        x+= dx;
          theta += 0.03;
        //Mask image
          maskGraphics2.beginDraw();
        //  maskGraphics.background(0); // this is just like background(0), but only works on the mask
          maskGraphics2.fill(255); // only draw in greyscale to the mask. 
          maskGraphics2.ellipse(x,yValues[i] + 200, 100, 100); 
      }
       rock2.mask(maskGraphics2);
          image(rock2, 0, 0);
    }
    
     void calc3(float amp) {
    amplitude = amp;
    //increment angle
    theta += 0.3;
    //for every X value, create a Y value
    float x = theta;
      for (int i = 0; i <yValues.length; i++) {
        yValues[i] = inc + sin(x)*(amplitude + 20);
        x+= dx;
         theta += 0.03;
        //Mask image
          maskGraphics3.beginDraw();
          maskGraphics3.background(0); // this is just like background(0), but only works on the mask
          maskGraphics3.fill(255); // only draw in greyscale to the mask. 
          maskGraphics3.ellipse(x,yValues[i]+200, 50,50);  
          
      }
       rock3.mask(maskGraphics3);
        image(rock3, 0, 0);
    }
       
  }