//For more information on how to calculate a phyllotaxis sequence by The Coding Train: https://www.youtube.com/watch?v=KWoJgHFYWxY

class Phylloid {
  int n = 0;
  int nMax;

  float c;
  float cMid;
  float cDev = 0;
  
  float x;
  float y;

  Phylloid(float _c, int _nMax) {
    c = _c;
    cMid = _c;
    nMax = _nMax;
  }
  
  Phylloid(float _c, float _cDev, int _nMax) {
    c = _c;
    cMid = _c;
    cDev = _cDev;
    nMax = _nMax;
  }
  
  void updatePosition() {
    float a = n * 137.5;
    float r = c * sqrt(n);
  
    x = r * cos(a);
    y = r * sin(a);
  }
  
  void updatePosition(float z) {
    c = cDev * sin(TWO_PI * z) + cMid;
  
    float a = n * 137.5;
    float r = c * sqrt(n);
  
    x = r * cos(a);
    y = r * sin(a);
  }
  
  boolean incrementN() {
    if (n < nMax) {
      n++;
      return true;
    }
    else {
      return false;
    }
  }
}
