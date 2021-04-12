
void setup(){
  size(400, 400);
  teleportPipes();
}

int birdX = 100;
int birdY = 0;

int birdYVelocity = 50;
int gravity = 2;

int pipeX = 400;
int pipeGap = 100;

int upperPipeHeight = (int) random(50, 350);

int score = 0;


void draw(){
  background(0, 75, 125);
  fill(255, 255, 0);
  stroke(0, 0, 0);
  ellipse(birdX, birdY, 25, 25);
  fill(0, 255, 100);
  rect(pipeX, 0, 50, upperPipeHeight);
  rect(pipeX, upperPipeHeight + pipeGap, 50, 400);
  birdY+=gravity;
  pipeX-=2;
  teleportPipes();
  if(intersectsPipes()){
    fill(255, 0, 0);
    rect(0, 0, 500, 500);
  }
  fill(0, 255, 0);
  rect(0, 370, 400, 30);
  text(score, 200, 50);
}

void mousePressed(){
  birdY-=birdYVelocity;
}

void teleportPipes(){
  if(pipeX<0){
    pipeX = 400;
    upperPipeHeight = (int) random(100, 400);
    score++;
  }
  
}

boolean intersectsPipes(){
  if(birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX + 50)){
    return true;
  }else if (birdY> (upperPipeHeight+pipeGap) && birdX > pipeX && birdX < (pipeX + 50)){
    return true;
  }else if(birdY>370){
    return true;
  }else{
    return false;
  }
}
