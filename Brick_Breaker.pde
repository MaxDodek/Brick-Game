//Max Dodek
//2.3 - Brick Project

//Brick varaibles //[] - makes arrays/book, or book of arrays
int [] x;
int [] y;
int brickd;
int n;// # of bricks
int tempx, tempy;


//colour code
color yellow = #E2F311;
color lightgreen = #9BD739;
color torquoise = #1AA584;
color darkgreen = #135545;
color black = #0D0D0D;
color white= #FFFFFF;



//mode framework
int mode; //
final int INTRO =1;
final int GAME = 2;
final int PAUSE =3;
final int GAMEOVER = 4;
final int LEVELS = 5;



//entity variables
float px, py, pd;//paddle
float bx, by, bd, speed;

boolean lkey, rkey;

//Game Variables
float vx, vy; //target velocity


void setup() {
  brickd =50;
  n= 75; // why is my first brick away from my entire patern????
  x = new int [n];
  y = new int [n];
  tempx = 50;
  tempy=50;
  int i=0;
  while (i<n) {

    x[i]= tempx;
    y[i]=tempy;
    tempx=tempx+50;

    if (tempx==width) {
      tempx=50;
      tempy=tempy+50;
    }
   

    i=i+1;
  }



  size (800, 800, P2D);
  mode = GAME;
  rectMode(CENTER);
  textAlign(CENTER);



  //initialize paddle:
  //Paddle
  px = width/2;
  py=height;
  pd=100;



  //initialize ball
  bx=width/2;
  by=height/2;
  bd=10;
  speed=5;

  //initialize keyboard variables
  lkey=rkey=false;


  //game variables initialization

  vx= 4;
  vy= 3;
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
