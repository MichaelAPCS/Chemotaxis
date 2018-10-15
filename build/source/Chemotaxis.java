import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

int[] number = new int[100];
int counter2 = 0;
PImage imgSeinf;
PImage imgNewm;
PImage imgCosmo;
int counter = 0;
//declare bacteria variables here
int c = color(197);
int actual = color(197);
int x = 0;
Bacteria[] sue;
Bacteria[] tom;
Bacteria[] newman;
public void setup() {


for (int j = 1; j<=10; j++) {
  number[counter2] = j;
  counter2++;
}
  
  imageMode(CENTER);

  imgSeinf = loadImage("kramergood.jpg");

  imgNewm = loadImage("Jerry.jpg");
  imgCosmo = loadImage("newman.jpg");
  //initialize bacteria variables here

  sue = new Bacteria[100];
  tom = new Bacteria[2];
  newman = new Bacteria[2];

  for (int i = 0; i < (sue.length)/10; i++)
  {
    sue[i] = new Bacteria(200, 200, loadImage("newman.jpg"));
  }
  for (int i = 0; i < tom.length; i++)
  {
    tom[i] = new Bacteria(100, 100, loadImage("Jerry.jpg"));
  }
  for (int i = 0; i < newman.length; i++)
  {
    newman[i] = new Bacteria(mouseX, mouseY, imgSeinf);
  }
}
public void draw()

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
  public void move() {
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
  public void show() {
    fill(0);
    if (get(myX-3,myY-3)!=1){
    tint(255,150);
    }
    else {
      tint(0);
    }
    image(myK, myX, myY, height/8, width/8);
  }
  public void getPoints() {
    if (myX == sue[1].myX && myY == sue[1].myY ||myX == sue[2].myX && myY == sue[2].myY||myX == sue[5].myX && myY == sue[5].myY ) {
      counter += 1;
      myX = (int)(Math.random()*width);
      myY = (int)(Math.random()*height);
      number[10+ counter] = 10+counter;
    }
    //void check() {
    //  if myX
  }
  public void moveNewman() {
    myX = mouseX;
    myY = mouseY;
  }
}
  public void settings() {  size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
