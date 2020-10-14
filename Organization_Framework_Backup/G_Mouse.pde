void mouseReleased() {
  if (mode == Intro) {
    introc();
  } else if (mode == Option) { // else is if the prevous if is not true
    Optionc();
    cs();
  } else if (mode == Inst) { // else is if the prevous if is not true
    Instc();
  } else if (mode == Game) { // else is if the prevous if is not true
    gamec();
  } else if (mode == Pause) { // else is if the prevous if is not true
    pausec();
  } else if (mode == GameOver) { // else is if the prevous if is not true
    goc();
  }
}

void mouseDragged() {
  if (mode == Option) { // else is if the prevous if is not true
    cs();
    x = width/2;
    y = height/2;
    d = 100;
    vx = random (-5, 5);
    vy = random (-5, 5);

  }
}
