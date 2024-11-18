float x, y;
float w = 100;
float h = 100;
float bright = 0;

void setup() {
  size(640, 360);
  rectMode(CENTER);
  x = width * 0.5;
  y = height * 0.5;
  stroke(255);
}

void mousePressed() {
  x = width * 0.5 + random(width * .25);
  y = height * 0.5 + random(height * .25);
  w = random(width * .5);
  h = random(height * .5);
}

void draw() {
  background(0);

  if (mouseX > x - w * 0.5
    && mouseX < x + w * 0.5
    && mouseY > y - h * 0.5
    && mouseY < y + h * 0.5) {
    bright = 255;
  }

  fill(bright);
  rect(x, y, w, h);
  
  bright -= 5;
}