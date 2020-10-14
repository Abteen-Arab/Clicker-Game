void game() {
  textFont(Logo_Font);
  //Target
  if (PlayerSelector == 1) {
    background(Red);
    stroke(255);
    image(SM, x-50, y-50, szeX, szeY);
  } else if (PlayerSelector == 2) {
    background(Blue);
    stroke(255);
    image(IM, x-50, y-50, szeX, szeY);
  } else if (PlayerSelector == 3) {
    background(Green);
    stroke(255);
    image(HLK, x-50, y-50, szeX, szeY);
  }
   
  //Pause
  tactileR(50,150,50,100);
  fill(Egg);
  rect(50,50,100,50, width/50, width/50, width/50, width/50);
  stroke(0);
  rect(90,60,5,30);
  rect(105,60,5,30);
  

  //Movement
  x = x + vx;
  y = y + vy;

  // Keeping track of score
  fill(0);
  textSize(40);
  text("Score : " + score, width/2, 50);
  text("Lives : " + lives, width/2, 100);
  //Bouncing
  if (x < 50 || x > width-szeX/2) {
    vx = vx * -1;
  }

  if (y < 50 || y > height-szeY/2) {
    vy = vy * -1;
  }
}


void gamec() {
  if (mouseX > x-50 && mouseX < x+szeX-50 && mouseY > y-50 && mouseY < y+szeY-50) {
    score = score + 1;
    vx = vx * 1.1;
    vy = vy * 1.1;
    point.rewind();
    point.play();
  } else if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 100) { 
    mode = Pause;
  } else {
    lives = lives - 1;
    life.rewind();
    life.play();
  } 

  //Game End
  if (lives == 0) {
    mode = GameOver;
    lives = 5;
    score = 0;
    vx = random (-5, 5);
    vy = random (-5, 5);
    lost.play();
  }
    
  //Best Score
  if (score > bscore) {
    bscore = score;
  }
    
}
