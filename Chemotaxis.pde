
//declare bacteria variables here
int x = 0;
Bacteria[] sue;
void setup()   
{     
  //initialize bacteria variables here  

  sue = new Bacteria[100];
  for (int i = 0; i < sue.length; i++)
  {
    sue[i] = new Bacteria();
  }
}   
void draw()   
{    
  //move and show the bacteria  
  for (int i = 0; i < sue.length; i++)
  {
  sue[i].move();
  sue[i].show();
  }
}  
class Bacteria    
{     
  //lots of java!   
  void move() {
    x = x + (int)(Math.random()*10);
  }
  void show() {
    background(0);
    ellipse(x, 30, 10, 10);
  }
}    
