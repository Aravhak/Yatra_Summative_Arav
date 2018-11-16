import processing.sound.*;
SoundFile file;
import queasycam.*;
PImage grass;
PImage blue;
PImage red;
float rot=0;

QueasyCam cam;

void setup(){
  size(800, 800, P3D);
  background(0);
  cam = new QueasyCam(this);
  cam.speed = 5;              // default is 3
  cam.sensitivity = 1;      // default is 2
  grass=loadImage("grass.jpg");
  blue=loadImage("blue.png");
  red=loadImage("red.jpg");
  
  file = new SoundFile(this, "MinecraftMusic.mp3");
  file.play();
}

void draw(){
  background(0);
  
  fill(135,206,250);
 box(400);
  grass.resize(400,400);
  red.resize(199,142);
  
  pushMatrix();
  rotateY(0);
  popMatrix();
  
  pushMatrix();
  translate(-200,199,-200);
  rotateX(PI/2);
  image(grass,0,0);
  popMatrix();
  
  pushMatrix();
  translate(0,100,0);
  rotateY(PI/2);
  rotateX(PI/4);
  image(red,0,0);
  popMatrix();
  
  pushMatrix();
  translate(0,100,0);
  rotateY(PI/2);
  rotateX(PI/4*7);
  image(red,0,0);
  popMatrix();
  
  pushMatrix();
  translate(0,100,-5);
  strokeWeight(10);
  
  line(0,0,0,100);
  
  line(0,0,5,100,100,5);
  
  line(0,0,5,-100,100,5);
  
  line(0,0,5,0,0,-199);
  
  line(100,99,5,100,99,-200);
  
  line(-100,99,5,-100,99,-200);
  
  strokeWeight(1);
  popMatrix();
  
  pushMatrix();
  translate(0,100,-199);
  fill(255,0,0);
  triangle(0,0,100,99,-100,99);
  popMatrix();
  
  pushMatrix();
  noStroke();
  translate(150, -150, 150);
  fill(255,255,0);
  sphere(32);
  popMatrix();
  stroke(0,0,0);
  
  pushMatrix();
  translate(0,220,-165);
  fill(255);
  box(60);
  popMatrix();
  
  pushMatrix();
  noStroke();
  translate(0,220,-110);
  fill(155);
  box(50);
  popMatrix();
  
  pushMatrix();
  translate(0,220,-60);
  fill(155);
  box(50);
  popMatrix();
  stroke(0);
}