void go(){
  textFont(Logo_Font);
  background(0,0,255);
  textSize(100);
  text("GAME OVER", width/2 -2, height/2 +2);
  text("GAME OVER", width/2, height/2);
  
  text("Best Score =" +bscore, width/2 -2, 502);
  text("Best Score =" +bscore, width/2, 500);
}

void goc(){
 mode = Intro;
}
