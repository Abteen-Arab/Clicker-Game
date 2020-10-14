void Option() {
  textFont(Logo_Font);
  strokeWeight(1);
  stroke(0);
  background(0);
  image(bkgrnd, 0, 0);
  fill(130);
  rect(100, 150, 600, 600, width/50, width/50, width/50, width/50);

  //Hulk
  strokeWeight(5);
  tactileR(185, 295, 175, 285);
  fill(150);
  rect(150, 175, 110, 110, width/50, width/50, width/50, width/50);
  stroke(0);
  fill(0);
  circle(205, 230, d);
  image(HLK, 155, 180, 100, 100);

  //Ironman
  tactileR(505, 615, 175, 285);
  fill(150);
  rect(550, 175, 110, 110, width/50, width/50, width/50, width/50);
  fill(Red);
  stroke(0);
  circle(605, 230, d);
  image(IM, 555, 180, 100, 100);

  //Spiderman
  tactileR(350, 460, 175, 285);
  fill(150);
  rect(350, 175, 110, 110, width/50, width/50, width/50, width/50);
  stroke(0);
  fill(Red);
  circle(405, 230, d);
  image(SM, 355, 180, 100, 100);


  //Selector Line
  tactileR(350, 550, 430, 470);
  strokeWeight(d * 0.1);
  line(350, 450, 550, 450);
  //Circle On Selector
  fill(255);
  stroke(0);
  strokeWeight(3);
  circle (sliderx, 450, 20);

  //Indicator
  if (PlayerSelector == 1) {
    fill(Red);
    rect(150, 400, szeX, szeY, width/50, width/50, width/50, width/50);
    image(SM, 150, 400, szeX, szeY);
  } else if (PlayerSelector == 2) {
    fill(Blue);
    rect(150, 400, szeX, szeY, width/50, width/50, width/50, width/50);
    image(IM, 150, 400, szeX, szeY);
  } else if (PlayerSelector == 3) {
    fill(Green);
    rect(150, 400, szeX, szeY, width/50, width/50, width/50, width/50);
    image(HLK, 150, 400, szeX, szeY);
  }

  //Start Game
  tactileR(200, 600, 600, 700);
  strokeWeight(5);
  rect(200, 600, 400, 100, width/50, width/50, width/50, width/50);
  fill(0);
  text("Back-Smash", width/2 - 2, 652);
  fill(Green);
  text("Back-Smash", width/2, 650);
}

void Optionc() {
  if (mouseX > 350 && mouseX < 460 && mouseY > 175 && mouseY < 285) {
    PlayerSelector = 1;
  } else if (mouseX > 505 && mouseX < 615 && mouseY > 175 && mouseY < 285) {
    PlayerSelector = 2;
  } else if (mouseX > 185 && mouseX < 295 && mouseY > 175 && mouseY < 285) {
    PlayerSelector = 3;
  } else if (mouseX > 200 && mouseX < 600 && mouseY > 600 && mouseY < 700) {
    mode = Intro;
  }
  
  
}

void cs() { //=================================================================================================
  if (mouseX > 350 && mouseX < 550 && mouseY > 440 && mouseY < 480) {
    sliderx=mouseX;
  }
  szeX = map(sliderx, 350, 450, 50, 100);
  szeY = map(sliderx, 350, 450, 50, 100);
}
