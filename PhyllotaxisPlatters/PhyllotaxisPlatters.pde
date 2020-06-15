float z = 0;
float zInc = 0.1;

void setup() {
  size(1000, 1000, P3D);
  background(0);
}

void draw() {
  
  fill(255);
  
  Phylloid slice = new Phylloid(3, 0.5, 400);
  
  while(slice.incrementN()) {
    slice.updatePosition(0.2*z);
    
    float x = slice.x + width/2;
    float y = slice.y + height/2;
    
    translate(0, 0, z);
    ellipse(x, y, 16, 16);
  }
  
  z += zInc;
}
