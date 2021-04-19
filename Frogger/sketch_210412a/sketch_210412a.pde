
int hopDistance = 50;
int frogX = 200;
int frogY = 400;

Car c1 = new Car(50, 50, 80, 3);
Car c2 = new Car(300, 100, 50, 5);
Car c3 = new Car(250, 200, 120, 2);



void setup(){
  size(400, 400);
}


void draw(){
  background(50, 50, 50);
  c1.driveLeft();
  c2.driveRight();
  c3.driveRight();
  c1.display();
  c2.display();
  c3.display();
  fill(0, 200, 50);
  
  keepInside();
  ellipse(frogX, frogY, 50, 50);
  
  if(intersects(c1) || intersects(c2) || intersects(c3)){
    frogX = 200;
    frogY = 400;
  }
}

void keyPressed(){
  if(key == CODED){
        if(keyCode == UP)
        {
            frogY-=10;
        }
        else if(keyCode == DOWN)
        {
            frogY+=10;
        }
        else if(keyCode == RIGHT)
        {
            frogX+=10;
        }
        else if(keyCode == LEFT)
        {
            frogX-=10;
        }
    }
}

void keepInside(){
  if(frogY<0){
    frogY = 0;
  }if(frogY > 400){
    frogY = 400;
  }if(frogX<0){
    frogX = 0;
  }if(frogX > 400){
    frogX = 400;
  }
}

class Car{
  int carX;
  int carY;
  int size;
  int speed;
  Car(int x, int y, int sIze, int sPeed){
    carX = x;
    carY = y;
    size = sIze;
    speed = sPeed;
  }
  
  void driveLeft(){
    carX-=speed;
    if(carX<0){
      carX = width;
    }
  }
    void driveRight(){
    carX+=speed;
    if(carX>width){
      carX = -20;
    }
  }
  
  int getX(){
    return carX;
  }
  
  int getY(){
    return carY;
  }
  
  int getSize(){
    return size;
  }
  
  
  
  void display(){
    fill(0, 255, 0);
    rect(carX, carY, size, 50);
  }
  
}



boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}
