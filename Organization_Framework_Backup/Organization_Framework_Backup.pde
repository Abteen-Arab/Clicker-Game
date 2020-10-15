// Abteen Arab
// "Date"
// Block: 1-1B 
// Clicker Game

// The 800 by 800 leaves a bit of the stuff out.

//Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//controls different screens (modes)
int mode; 

final int Intro =0, Option = 1, Inst=2, Game=3, Pause=4, GameOver=5; //these are used to give purpose ot modes, final locks the varaible

//Dont Varaibles
PFont Logo_Font;

//Color Varaible
color Red, Green, Blue, Purple, Yellow, Egg;

//Taregt Variable
float x, y, d, vx, vy;

//Score Variables
int score, lives, bscore;

//Image Variables
PImage SM, HLK, IM, bkgrnd, Options, Flag;

//Sound Varaibale
Minim minim;
AudioPlayer point, combo, lost, life;

//SLider Varaibles
float sliderx, szeX, szeY, PicY, PicX;

//Player Selection
int PlayerSelector=1;

void setup() {
  size(800, 800);
  mode = Intro;
  Red = #892C2C;
  Green = #47FF00;
  Blue = #0847FF;
  Purple = #920093;
  Yellow = #FEFF00;
  Egg = #FAFFD3;
  textAlign(CENTER, CENTER);

  //Image setup
  SM = loadImage("Spiderman.png");
  HLK = loadImage("Hulk.png");
  IM = loadImage("Ironman.png");
  bkgrnd = loadImage("Background.png");
  bkgrnd.resize(800, 800);
  Flag = loadImage("Flag.jpg");
  Flag.resize(800, 800);

  //Target Initializiation
  x = width/2;
  y = height/2;
  d = 100;

  vx = random (-5, 5);
  vy = random (-5, 5);

  //Stat Initilized
  score = 0;
  lives = 5;
  bscore = 0;

  //minim
  minim = new Minim(this);
  point = minim.loadFile("coin.wav"); 
  life  = minim.loadFile("bump.wav");
  lost  = minim.loadFile("gameover.wav");
  
  //Slider 
  sliderx = 450;
  szeX = 100;
  szeY = 100;
  
  //Font
  Logo_Font = createFont("AVENGEANCE HEROIC AVENGER AT.otf", 13);
}

void draw() {
  //Organizational Framework For The Code; chooses between one of many functions
  if (mode == Intro) {
    intro();
  } else if (mode == Inst) { // else is if the prevous if is not true
    Inst(); 
  } else if (mode == Option) { // else is if the prevous if is not true
    Option();
  } else if (mode == Game) { // else is if the prevous if is not true
    game();
  } else if (mode == Pause) { // else is if the prevous if is not true
    pause();
  } else if (mode == GameOver) { // else is if the prevous if is not true
    go();
  } else { // else is if the prevous if is not true
    println("Error: Mode = " + mode);
  }
}

void tactileR(int x, int x1, int y, int y1){
  if(mouseX > x && mouseX < x1 && mouseY > y && mouseY < y1){
     stroke (255);
  } else {
     stroke (0);
  }
}
