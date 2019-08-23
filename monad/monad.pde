void setup() {
  size(805, 805);
  background(0);
}

void draw() {
  background(0);
  
  // T
  int s = millis();
  
  // G
  fill(255);
  stroke(255, 255, 255, 100);  
  strokeWeight(4);
  float coef = 0.0015;
  
  // 1
  for(int f = 0; f<30; f++)
  {
    for(int i = 1; i<31; i++){
      strokeWeight(i/5);
      fill(255*cos(s/8*coef), 255*cos(s/16*coef), 255*cos(s/24*coef), 255);
      stroke(255*cos(s/8*coef), 255*cos(s/16*coef), 255*cos(s/24*coef), 100+f);  
      circle(403 + (600-i*20)*cos((s/5+f*220+i)*coef*i/50), 403 + (600-i*20)*sin((s/2+f*220+i)*coef*i/50), i/4);
    }
  }
}