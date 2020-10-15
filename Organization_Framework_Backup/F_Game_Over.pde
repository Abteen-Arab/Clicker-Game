void go(){
  textFont(Logo_Font);
  background(0,0,255);
  textSize(100);
  text("GAME OVER", width/2 -2, 252);
  text("GAME OVER", width/2, 250);
  
  text("Best Score :" +bscore, width/2 -2, 402);
  text("Best Score :" +bscore, width/2, 400);
  
  //End
  tactileR(200, 600, 600, 700);
  strokeWeight(5);
  fill(Yellow);
  rect(200, 600, 400, 100, width/50, width/50, width/50, width/50);
  fill(0);
  textSize(50);
  text("Restart", width/2 - 2, 652);
  fill(Purple);
  text("Restart", width/2, 650);
  
  //Restart
  tactileR(200, 600, 600, 700);
  strokeWeight(5);
  fill(Yellow);
  rect(200, 600, 400, 100, width/50, width/50, width/50, width/50);
  fill(0);
  textSize(50);
  text("Restart", width/2 - 2, 652);
  fill(Purple);
  text("Restart", width/2, 650);
  
}

void goc(){
  if (mouseX > 200 && mouseX < 600 && mouseY > 600 && mouseY < 700) {
    mode = Intro;
  }
}
