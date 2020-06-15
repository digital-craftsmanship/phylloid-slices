import processing.svg.*;

float z = 0;

//Change how quickly to scroll through the z space in the phylloid object.
float zInc = 2;


int sliceCount = 0;

//Maximum amount of SVG slices
int maxSlices = 30;

void setup() {
  size(1000, 1000);
  background(0);
}

void draw() {
  
  noStroke();
  fill(255);
  
  sliceCount++;
  Phylloid slice = new Phylloid(13, 0.1, 60 * sliceCount/maxSlices);
  
  beginRecord(SVG, "PhylloidSlice-" + str(sliceCount) + ".svg");
  
  while(slice.incrementN()) {
    slice.updatePosition(0.5*z);
    
    float x = slice.x + width/2;
    float y = slice.y + height/2;
    
    ellipse(x, y, 50, 50);
  }
  
  endRecord();
  if (sliceCount >= maxSlices) {
    exit();
  }
  
  z += zInc;
}
