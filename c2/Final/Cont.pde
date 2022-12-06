void mostraVida() {
  textSize(20);
  fill(255);
  if (vida == 3) {
    image(coracao, 10, 30, 40, 40);
    image(coracao, 50, 30, 40, 40);
    image(coracao, 90, 30, 40, 40);
  } else if (vida == 2) {
    image(coracao, 10, 30, 40, 40);
    image(coracao, 50, 30, 40, 40);
  } else if (vida == 1) {
    image(coracao, 10, 30, 40, 40);
  } else if (vida == 0) {
    gameOver();
  }
}

void gameOver() {
  a.moveComida = true;
  b.moveComida = true;
  lixo.moveComida = true;

  background(0);

  textSize(100);
  fill(255, 0, 0);
  text("GAME OVER", width/2, height/2);
  
  textSize(50);
  text("SCORE: " + score, width/2, height/2+70);

  textSize(20);
  text("press to restart", width/2, 4*height/5);
  if (mousePressed) {
    pont = 0;
    setup();
  }
}

void mostraScore() {
  textSize(25);
  fill(0);
  text("SCORE: " + score, 70, 30);
}
