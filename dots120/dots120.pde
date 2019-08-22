void setup() {
  size(805, 805);
  background(0);
}

void draw() {
  background(0);
  
  // S
  strokeWeight(2);
  stroke(88);
  noFill();
  square(15, 15, 380);
  square(410, 15, 380);
  square(15, 410, 380);
  square(410, 410, 380);
  
  // T
  int s = millis();
  
  // G
  strokeWeight(4);
  fill(255, 255, 255, 255);
  stroke(255, 255, 255, 100);  
  float coef = 0.0015;
  
  // 1
  for(int f = 0; f<120; f++)
  {
      // 1
      circle(206 + 150 * cos((s-f*97.7)/4*0.0015), 206 + 100 * sin((s-f*220)/3*0.0015), 4);
      // 2
      //circle(599 + 150 * sin((s+f*250)*0.0011), 206 - 100 * cos((s+f*250)*coef), 4);
      //circle(599 + 150 * sin((s+f*250)*0.0011), 206 - 100 * cos((s+f*5)*coef), 4);
      circle(599 + 150 * sin((s+f*250)*0.0011), 206 - 100 * cos((s+f*200)*coef), 4);
      // 3
      //circle(206 + 150 * sin((s+f*250)*0.0011), 599 - 100 * cos((s+f*250)*coef), 4);
      //circle(206 + 150 * sin((s+f*5)*0.0011), 599 - 100 * cos((s+f*250)*coef), 4);
      circle(206 + 150 * sin((s+f*200)*0.0011), 599 - 100 * cos((s+f*250)*coef), 4);
      // 4
      circle(599 + 150 * cos((s-f*220)/4*0.0015), 599 + 100 * sin((s-f*220)/3*0.0015), 4);
  }
}
  
  //// 2
  //for(int f = 0; f<120; f++)
  //{
  //    circle(599 + 150 * sin((s+f*250)*0.0011), 206 - 50 * cos((s+f*250)*coef), 4);
  //}
  
  //// 3
  //for(int f = 0; f<120; f++)
  //{
  //    circle(206 + 150 * cos(s/2*coef+f), 599 - 50 * sin(s*coef+f), 4);
  //}
  
  //// 4
  //for(int f = 0; f<120; f++)
  //{
  //    circle(599 + 150 * cos((s+f*200)/3*coef), 599 - 50 * sin((s+f*200)*coef), 4);
  //}
