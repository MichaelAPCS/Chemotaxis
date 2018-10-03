
//declare bacteria variables here
int x = 0;
Bacteria[] sue;
void setup()   
{     
  size(500, 500);
  //initialize bacteria variables here  

  sue = new Bacteria[100];
  for (int i = 0; i < sue.length; i++)
  {
    sue[i] = new Bacteria(200, 200);
  }
}   
void draw()   

{    
  background(197);
  //move and show the bacteria  
  for (int i = 0; i < sue.length; i++)
  {
    sue[i].move();
    sue[i].show();
  }
}  
class Bacteria    
{     
  int myX, myY;
  Bacteria(int x, int y) {
    myY = y; 
    myX = x;
  }

  //lots of java!   
  void move() {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3; 
  }
  void show() {
    fill(0);
    ellipse(myX, myY, 10, 10);
  }
}  
