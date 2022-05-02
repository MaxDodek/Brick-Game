void game {
  //paddles


  //ball
  stroke(yellow);
  circle(x, y, balld);
  //move ball{
  if (timer<0) {
    x=x+vx;
    y=y+vy;
    println(vx+", "+vy);
  }


 //bouncing

  //bounce aggainst top or bottum
  if (y<balld/2||y>height-balld/2) {// top or bottom
    vy*=-1;
    bounce.rewind();
    bounce.play();
  }
    
  }
  
  
  void gameClicks () {
  }
