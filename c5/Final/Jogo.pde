void mostraJogo() {
  image(fundo, 0, 0, 600, 850);
  mostraVida();
  if (vida > 0) {
    okay = false;
    mostraScore();
    mostraPou();
    MEFpou();

    a.update();
    a.display();
    if (score >= 50) {
      lixo.lixo();
      lixo.display();
    }
    if (score >= 100) {
      b.update();
      b.display();
    }
  } else {
    okay = true;
    JOGO = false;
    GAMEOVER = true;
  }
}

void gameOver() {

  background(c1);

  record = splice(record, score, 0);

  textSize(80);
  fill(c2);
  text("GAME", width/2, height/3);
  text("OVER", width/2, height/2);

  textSize(30);
  text("SCORE " + score, width/2, height/2+120);

  textSize(20);
  text("PRESS TO RESTART", width/2, 4*height/5);

  okay = true;
  mostraRecord = true;
}
