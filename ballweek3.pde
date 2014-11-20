float x, y;
float ballSize= 20;
float speed =5;
int r, g, b;
boolean movingUp=false;
boolean movingLeft=false;

void setup() {

  size(450, 240);
  y=ballSize*1.5; 
  x= width/2;
}

void draw() {
//  background(#92CFED);
  fill(15, 127, 9);
  ellipse(x, y, ballSize, ballSize);

  if (y+ballSize/2 >= height) {
    movingUp= true;
  } else if (y-ballSize/2 <=0) {
    movingUp= false;
  }
  if (movingUp) {
    y=y-speed;
  } else {
    y=y+speed;
  }
  if (y==0) {
    movingUp=false;
  }

  if (x+ballSize/2 >= width) {
    movingLeft= true;
  } else if (x-ballSize/2 <=0) {
    movingLeft= false;
  }
  if (movingLeft) {
    x=x-speed;
  } else {
    x=x+speed;
  }
  if (x==0) {
    movingLeft=false;
  }
}

