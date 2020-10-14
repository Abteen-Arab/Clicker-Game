void Inst(){
  textFont(Logo_Font);
  background(0);
  image(bkgrnd,0, 0);
  fill(Blue);
  stroke(0);
  rect(100, 100, 600, 550, width/50);
  
  //Text
  fill(0);
  textSize(50);
  text("Intructions", width/2, 150);
  text("Intructions", width/2 -1, 151);
  textSize(width/32);
  text("Try to hit the Marvel characters as much as you", width/2, 245);
  
  text("can. Each hit will result in an extra point, but", width/2, 295);
  
  text("be care full as every miss results in a loss of", width/2, 345);
  
  text("health.", width/2, 395);
  
  //Start Button
  tactileR(300,500,475,575);
  fill(Red);
  rect(300, 475, 200, 100, width/75, width/75, width/75, width/75);
  fill(0);
  textSize(50);
  text("Start", width/2 , 520);
  
}

void Instc(){
  if (mouseX > 300 && mouseX < 500 && mouseY > 475 && mouseY < 575) {
    mode = Game;
  }
}
