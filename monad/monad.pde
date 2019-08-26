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
  
  for(int f = 0; f<30; f++)
  {
    for(int i = 1; i<31; i++){
      strokeWeight(i/4);
      fill(105, 105, 250, 255);
      stroke(105, 105, 250, 100+f);
      circle(403 + (600-i*20)*cos((sin(s*0.00002)*40000+f*220+i)*coef*i/45), 403 + (600-i*20)*sin((sin(s*0.00002)*40000+f*220+i)*coef*i/50), i/4);
    }
  }
}
