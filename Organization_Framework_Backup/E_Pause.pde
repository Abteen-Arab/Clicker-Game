void pause(){
  textFont(Logo_Font);
  tactileR(50,150,50,100);
  fill(Egg);
  rect(50,50,100,50, width/50, width/50, width/50, width/50);
  stroke(0);
  triangle(90,60, 115,75,90,90);
}

void pausec(){
  if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 100) {
   mode = Game;
  }
}
