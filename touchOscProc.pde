import cc.arduino.*;
import processing.serial.*;
import oscP5.*;
import netP5.*;

Arduino arduino;

OscP5 oscP5;

float redAmount = 0.0f;
float greenAmount = 0.0f;
float blueAmount = 0.0f;


void setup(){
  size(320, 480);
  background(0);
  oscP5 = new OscP5(this, 8000); 
  arduino = new Arduino(this, Arduino.list()[0],57600);
  
  
}


void draw(){
  background(redAmount, greenAmount, blueAmount);
  
  fill(0);
  //red rect
  stroke(255,0,0);
  rect(34,39,67,255);
  fill(50,40,40);
  rect(34,39+255,67,-redAmount);
  
  //green rect
  fill(0);
  stroke(0,255,0);
  rect(124,39,67,255);
  fill(40,50,40);
  rect(124,39+255,67,-greenAmount);
  
  //blue rect
  fill(0);
  stroke(0,0,255);
  rect(216,39,67,255);
  fill(40,40,50);
  rect(216,39+255,67,-blueAmount);
  
  //write to arduino
  arduino.analogWrite(11, int(redAmount));
  arduino.analogWrite(10, int(greenAmount));
  arduino.analogWrite(9, int(blueAmount));
  
  
  
}

void oscEvent(OscMessage theOscMessage){
  String addr = theOscMessage.addrPattern();
  float val = theOscMessage.get(0).floatValue();
  
  if(addr.equals("/1/red")){ redAmount = val;}
  if(addr.equals("/1/green")){ greenAmount = val;}
  if(addr.equals("/1/blue")){ blueAmount = val;}
  
  
  
}


