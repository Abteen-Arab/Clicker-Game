void intro() {
  image(bkgrnd,0, 0);
  textFont(Logo_Font);
  //Title
  fill(0);
  textSize(50);
  text("Super Marvel Smash", 398, 302);
  textSize(50);
  text("Super Marvel Smash", 400, 300);
  //Start Button 
  tactileR(200,600,500,600);
  strokeWeight(5);
  fill(Egg);
  rect(200,500,400,100,width/50);
  textSize(50);
  fill(50);
  text("Begin", 398, 547);
  fill(0);;
  text("Begin", 400, 545);
  
  
  //Options Screen
  strokeWeight(5);
  tactileR(200,600,650,750);
  fill(Egg);
  rect(200,650,400,100,width/50);
  stroke(0);
  fill(120);
  textSize(50);
  fill(50);
  text("Options", 398, 702);
  fill(0);
  text("Options", 400, 700);
}

void introc() {
  if (mouseX > 200 && mouseX < 600 && mouseY > 500 && mouseY < 600) {
  mode = Inst;
  }
  if (mouseX > 200 && mouseX < 600 && mouseY > 650 && mouseY < 750) {
  mode = Option;
  }
}
