float[][] points = {
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0},
{0,0}
};

float sin_coef = 0.002;
float cos_coef = 0.002;

void setup()
{
  size(500, 500);
  sin_coef = random(0.0001, 0.009);
  cos_coef = random(0.0001, 0.009);
}

void draw()
{
  int t = millis();
  background(0);
  PImage photo = loadImage("dots.png");
  PImage photo2 = loadImage("dotg.png");
  
  for (int i = 0; i<47; i ++)
  {
    points[i][0] = lerp(points[i][0], 200 * sin((t+i*20)*sin_coef), 0.05);
    points[i][1] = lerp(points[i][1], 200 * cos((t+i*20)*cos_coef), 0.05); 
    image(photo2, 225 + points[i][0], 225 + points[i][1]);
  }
  
  for (int i = 0; i<47; i ++)
  {
    image(photo, 250 + points[i][0], 250 + points[i][1]);
  }
}

void mousePressed()
{
  sin_coef = random(0.0001, 0.009);
  cos_coef = random(0.0001, 0.009);
}
