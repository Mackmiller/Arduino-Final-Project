

import processing.serial.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import cc.arduino.*;

Serial myPort;
String val;

Minim minim;
AudioPlayer song;
AudioPlayer song2;
BeatDetect beat;
BeatListener bl;
Arduino arduino;

int ledPin =  7;    // LED connected to digital pin 12
int ledPin2 =  8;    // LED connected to digital pin 1
int ledPin3 =  3; 
int ledPin4 =  4; 
int ledPin5 =  5; 
int ledPin6 =  6; 
int ledPin7 = 9;
int ledPin8 = 10;
int ledPin9 = 11;
int ledPin10 = 12;
int ledPin11 = 0;
int ledPin12 = 1;
int ledPin13 =  13; 

// LED connected to digital pin 0
int mySwitch = 2;

float kickSize, snareSize, hatSize;

void setup() {
  size(512, 200, P3D);

  minim = new Minim(this);
  arduino = new Arduino(this, Arduino.list()[2], 57600);
  arduino.pinMode(mySwitch, Arduino.INPUT);
  arduino.pinMode(ledPin, Arduino.OUTPUT);
  arduino.pinMode(ledPin2, Arduino.OUTPUT);
  arduino.pinMode(ledPin3, Arduino.OUTPUT);
  arduino.pinMode(ledPin4, Arduino.OUTPUT);
  arduino.pinMode(ledPin5, Arduino.OUTPUT);
  arduino.pinMode(ledPin6, Arduino.OUTPUT);
  arduino.pinMode(ledPin7, Arduino.OUTPUT);
  arduino.pinMode(ledPin8, Arduino.OUTPUT);
  arduino.pinMode(ledPin9, Arduino.OUTPUT);
  arduino.pinMode(ledPin10, Arduino.OUTPUT);
  arduino.pinMode(ledPin11, Arduino.OUTPUT);   
  arduino.pinMode(ledPin12, Arduino.OUTPUT);
  arduino.pinMode(ledPin13, Arduino.OUTPUT);
         

  

  song = minim.loadFile("sun5.mp3", 2048);
 
  beat = new BeatDetect(song.bufferSize(), song.sampleRate());
  
  beat.setSensitivity(100);
  
  bl = new BeatListener(beat, song);
 
  arduino.pinMode(ledPin, Arduino.OUTPUT);
  arduino.pinMode(ledPin2, Arduino.OUTPUT);
  arduino.pinMode(ledPin3, Arduino.OUTPUT);
  arduino.pinMode(ledPin4, Arduino.OUTPUT);
  arduino.pinMode(ledPin5, Arduino.OUTPUT);
  arduino.pinMode(ledPin6, Arduino.OUTPUT);
  arduino.pinMode(ledPin7, Arduino.OUTPUT);
  arduino.pinMode(ledPin8, Arduino.OUTPUT);
  arduino.pinMode(ledPin9, Arduino.OUTPUT);
  arduino.pinMode(ledPin10, Arduino.OUTPUT);
  arduino.pinMode(ledPin11, Arduino.OUTPUT);   
  arduino.pinMode(ledPin12, Arduino.OUTPUT);
  arduino.pinMode(ledPin13, Arduino.OUTPUT);
        
  
  

 
}


void draw() {

 if (arduino.digitalRead(mySwitch) == Arduino.HIGH) {
   background(0);
  fill(255);
     song.play();
  }
  
  
if (arduino.digitalRead(mySwitch) == Arduino.LOW) {
    beat.isKick();
 if (beat.isKick()){ 
      arduino.digitalWrite(ledPin, Arduino.HIGH);  
      arduino.digitalWrite(ledPin2, Arduino.HIGH);
      arduino.digitalWrite(ledPin3, Arduino.HIGH);
      arduino.digitalWrite(ledPin4, Arduino.HIGH);  
      arduino.digitalWrite(ledPin5, Arduino.HIGH);  
      arduino.digitalWrite(ledPin6, Arduino.HIGH);  
      arduino.digitalWrite(ledPin7, Arduino.HIGH);
      arduino.digitalWrite(ledPin8, Arduino.HIGH);
      arduino.digitalWrite(ledPin9, Arduino.HIGH);
      arduino.digitalWrite(ledPin10, Arduino.HIGH);
      arduino.digitalWrite(ledPin11, Arduino.HIGH);  
      arduino.digitalWrite(ledPin12, Arduino.HIGH);  
      arduino.digitalWrite(ledPin13, Arduino.HIGH); 
     }
     
   // song.play();

      // set the LED on
   
  arduino.digitalWrite(ledPin, Arduino.LOW);    // set the LED off
  arduino.digitalWrite(ledPin2, Arduino.LOW);    // set the LED off
  arduino.digitalWrite(ledPin3, Arduino.LOW);  
  arduino.digitalWrite(ledPin4, Arduino.LOW); 
  arduino.digitalWrite(ledPin5, Arduino.LOW); 
  arduino.digitalWrite(ledPin6, Arduino.LOW); 
  arduino.digitalWrite(ledPin7, Arduino.LOW);   
  arduino.digitalWrite(ledPin8, Arduino.LOW);
  arduino.digitalWrite(ledPin9, Arduino.LOW);
  arduino.digitalWrite(ledPin10, Arduino.LOW);
  arduino.digitalWrite(ledPin11, Arduino.LOW);
  arduino.digitalWrite(ledPin12, Arduino.LOW);
  arduino.digitalWrite(ledPin13, Arduino.LOW); 
 }}// set the LED off
  
  
void stop() {
  song.close();

  minim.stop();

  super.stop();
}