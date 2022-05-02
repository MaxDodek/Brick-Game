//Max Dodek
//2.3 - Brick Project

float i; //index variable

//colour code 
color yellow = #E2F311;
color lightgreen = #9BD739;
color torquoise = #1AA584;
color darkgreen = #135545;
color black = #0D0D0D;
color white= #FFFFFF;

float h, s, b;


//mode framework
int mode; // 
final int INTRO =1;
final int GAME = 2;
final int PAUSE =3;
final int GAMEOVER = 4;
final int LEVELS = 5;



//entity variables
float paddlex, paddley, paddled;//paddle
float x, y, balld, speed;//ball

boolean lkey, rkey;

//Game Variables
float vx, vy; //target velocity


void setup() { // should I do mode center???
  size (1000, 800, P2D);
  mode = GAME;
  rectMode(CENTER);
  textAlign(CENTER);



  //initialize paddle:
  //Paddle
  paddlex = 0;
  paddley=height/2;
  paddled=200;



  //initialize ball
  x=width/2;
  y=height/2;
  balld=100;
  speed=5;

lkey=rkey=false;


  //game variables initialization

  vx=4;// **how do I make sure that it won't just go up and down ;random(-4, 4)
  vy= 4;

  AI = false;
}

void draw () { // After draw, I can do void intro, void game, etc. instead of using tabs
  if (mode==INTRO) {
    intro();
  } else if (mode ==GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover ();
  } else {
    println("Mode error:"+ mode);
  }
}
