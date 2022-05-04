void game () {
  background(white);

  //paddles
  fill(yellow);
  stroke(yellow);
  circle(px, py, pd);

  //move paddles
  if (lkey==true) px=px-5;
  if (rkey==true) px=px+5;

  if (px>=width-bd/2 +10) {
    px= width-bd/2 +10 ;
  }
  if (px<width/100) {
    px=width/100;
  }

  //ball
  stroke(yellow);
  circle(bx, by, bd);

  //move ball
  bx=bx+vx;
  by=by+vy;

  //bounce aggainst top or bottom
  if (by<bd/2||by>height-bd/2) {
    vy=vy*-1;
  }

  if (bx<bd/2||bx>width-bd/2) {
    vx=vx*-1;
  }

  //Avoiding ball glitches --- Ask if it will work
  if (bx<=0) {
    bx=10;
  }

  if (bx>=width) {
    bx=width-10;
  }
  //bounce against paddles
  if (dist(px, py, bx, by) <= bd/2 + pd/2) {
    vx=(bx - px)/5;
    vy =(by - py)/5;
  }

  //Bricks--------------------------------------------------------


  int i=0;
  while (i<n) {
    if (y[i] == 50) fill (yellow); //how make one line of code for 3 lines, w/ same colour
    if (y[i] == 100) fill (lightgreen);
    if (y[i] == 150) fill (yellow);
    if (y[i] == 200) fill (lightgreen);
    if (y[i] == 250) fill (yellow); 

    circle(x[i], y[i], brickd);

    if (dist(x[i], y[i], bx, by) <= bd/2 + brickd/2) { //brick colisions
      vx=(bx - x[i])/5;
      vy =(by - y[i])/5;
    }
    i=i+1;
  }
}


void gameClicks () {
}
