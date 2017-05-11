int startX;
int startY;
int endX;
int endY;
PImage photo;


void setup()
{
  size(300, 300);
  strokeWeight(5);
  background(255);
  startY = (150);
  photo = loadImage("gon.jpg");
}

void draw() {
  image(photo,0,0);
  photo.resize(300,300);
  stroke(random(255), random(255), random (255));
  
  while (endX < 300) {
    endX= startX + (int)(random(10));
    endY= startY + (int)(random(-9,9));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}


void mousePressed()
{
  startX = (0);
  startY = (int)(random(300));
  endX = (0);
  endY = (0);
  
}
