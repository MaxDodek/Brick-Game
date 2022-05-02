void keyPressed() {
 
  if (keyCode == LEFT) upkey=true;
  if (keyCode ==RIGHT) downkey=true;
}

void keyReleased() {

  if (keyCode == LEFT) upkey=false;
  if (keyCode ==RIGHT) downkey=false;
}
