
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
    if (mouseX > x) {
    myX = myX + (int)(Math.random()*5)-1;
    }
    else {
    myX = myX + (int)(Math.random()*5)-3;
    }
    if (mouseY>x) {
      myY = myY + (int)(Math.random()*5)-1; 
    }
    else {
      myY = myY + (int)(Math.random()*5)-3;
    }
  }
  void show() {
    fill(0);
    ellipse(myX, myY, 10, 10);
  }
}  
