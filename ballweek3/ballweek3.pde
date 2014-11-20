float x, y;
float ballSize= 20;
float ySpeed =5;
float xSpeed = 10;
float gravity = 0.1;
float breaking = 0.09;
int r, g, b;


void setup() {

  size(450, 240);
  y=ballSize*1.5; 
  x= width/2;
}

void draw() {
  y = y + ySpeed;
  x= x+ xSpeed;
  ySpeed = ySpeed + gravity;

  background(#92CFED);
  fill(15, 127, 9);
  ellipse(x, y, ballSize, ballSize);


  if (y+ballSize/2 > height) {
    ySpeed *= -(1-breaking);
    y= height - ballSize/2;
  }
  if (x + ballSize/2 >= width) {
    xSpeed *= -(1-breaking);
    x=width - ballSize/2;
  } else if (x- ballSize/2 <= 0) {
    xSpeed *= -(1-breaking);
    x = ballSize/2;
  }
}

