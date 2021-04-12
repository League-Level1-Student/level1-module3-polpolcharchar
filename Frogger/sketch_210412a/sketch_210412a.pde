
int hopDistance = 50;
int frogX = 50;
int frogY = 50;

Car c1 = new Car(50, 50, 80, 20);
Car c2 = new Car(300, 100, 80, 20);



void setup(){
  size(400, 400);
}


void draw(){
  background(50, 50, 50);
  c1.display();
  c2.display();
  fill(0, 200, 50);
  
  keepInside();
  ellipse(frogX, frogY, 50, 50);
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
  
  void display(){
    fill(0, 255, 0);
    rect(carX, carY, size, 50);
  }
  
}
