int[] number = new int[100];
int counter2 = 0;
PImage imgSeinf;
PImage imgNewm;
PImage imgCosmo;
int counter = 0;
//declare bacteria variables here
color c = color(197);
color actual = color(197);
int x = 0;
Bacteria[] sue;
Bacteria[] tom;
Bacteria[] newman;
void setup() {


for (int j = 1; j<=10; j++) {
  number[counter2] = j;
  counter2++;
}
  size(1000, 1000);
  imageMode(CENTER);

  imgSeinf = loadImage("data/kramergood.jpg");

  imgNewm = loadImage("data/Jerry3.png");
  imgCosmo = loadImage("data/newman.jpg");
  

  sue = new Bacteria[100];
  tom = new Bacteria[2];
  newman = new Bacteria[2];

  for (int i = 0; i < (sue.length)/10; i++)
  {
    sue[i] = new Bacteria(200, 200, imgCosmo);
  }
  for (int i = 0; i < tom.length; i++)
  {
    tom[i] = new Bacteria(100, 100, imgNewm);
  }
  for (int i = 0; i < newman.length; i++)
  {
    newman[i] = new Bacteria(mouseX, mouseY, imgSeinf);
  }
}
void draw()

{
  background(255);
  //move and show the bacteria
  for (int i = 1; i < sue.length; i++)
  {


    if (number[i]-1 == i ) {
    // Do some stuff.

    sue[i].move();
    sue[i].show();
    //sue[i].check();
    }
  }
  tom[1].getPoints();
  tom[1].show();
  newman[1].show();
  newman[1].moveNewman();
}
class Bacteria
{
  int myX, myY;
  PImage myK;
  Bacteria(int x, int y, PImage k) {
    myY = y;
    myX = x;
    myK = k;
  }

  //lots of java!
  void move() {
    if (tom[1].myX > myX) {
      myX = myX + (int)(Math.random()*5)-1;
    } else {
      myX = myX + (int)(Math.random()*5)-3;
    }
    if (tom[1].myY>myY) {
      myY = myY + (int)(Math.random()*5)-1;
    } else {
      myY = myY + (int)(Math.random()*5)-3;
    }
    if (mouseX > myX) {
      myX = myX + (int)(Math.random()*5)-1;
    } else {
      myX = myX + (int)(Math.random()*5)-3;
    }
    if (mouseY>myY) {
      myY = myY + (int)(Math.random()*5)-1;
    } else {
      myY = myY + (int)(Math.random()*5)-3;
    }
  }
  void show() {
    fill(0);
    if (get(myX-3,myY-3)!=1){
    //tint(255,150);
    }
    else {
      tint(0);
    }
    image(myK, myX, myY, height/8, width/8);
  }
  void getPoints() {
    if (myX == sue[1].myX && myY == sue[1].myY ||myX == sue[2].myX && myY == sue[2].myY||myX == sue[5].myX && myY == sue[5].myY ) {
      counter += 1;
      myX = (int)(Math.random()*width);
      myY = (int)(Math.random()*height);
      number[10+ counter] = 10+counter;
    }
    
  }
  void moveNewman() {
    myX = mouseX;
    myY = mouseY;
  }
}
