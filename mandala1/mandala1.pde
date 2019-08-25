void setup(){
 size(700, 700);
 background(0);
}

void eightMandala(int ms, float coef){
  circle(350 + 100*sin(ms*coef), 350, 300);
  circle(350, 350 + 100*sin(ms*coef), 300);
  circle(350 - 80*sin(ms*coef), 350 + 80*sin(ms*coef), 300);
  circle(350 + 80*sin(ms*coef), 350 - 80*sin(ms*coef), 300);
  circle(350 - 100*sin(ms*coef), 350, 300);
  circle(350, 350 - 100*sin(ms*coef), 300);
  circle(350 - 80*sin(ms*coef), 350 - 80*sin(ms*coef), 300);
  circle(350 + 80*sin(ms*coef), 350 + 80*sin(ms*coef), 300);
}

void triangleMandala(int ms, float coef){
  triangle(350, 200 - 50*sin(ms*coef), 200 - 50*sin(ms*coef), 400 + 50*sin(ms*coef), 500 + 50*sin(ms*coef), 400 + 50*sin(ms*coef));
}

void draw(){
 int ms = millis();
 int s = second();
 background(0);
 noFill();
 stroke(255);
 strokeWeight(2);
 fill(67, 20, 34, 100);
 eightMandala(ms, 0.0005);
 fill(23, 45, 67, 100);
 eightMandala(ms, 0.0007);
 fill(23, 67, 34, 100);
 eightMandala(ms, 0.0010);
 //triangleMandala(ms, 0.0010);
}
