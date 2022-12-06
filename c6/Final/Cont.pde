void mostraVida() {
  textSize(20);
  fill(255);
  if (vida == 3) {
    image(coracao, width-130, 5, 40, 40);
    image(coracao, width-90, 5, 40, 40);
    image(coracao, width-50, 5, 40, 40);
  } else if (vida == 2) {
    image(coracao, width-90, 5, 40, 40);
    image(coracao, width-50, 5, 40, 40);
  } else if (vida == 1) {
    image(coracao, width-50, 5, 40, 40);
  }
}

void mostraScore() {
  textSize(20);
  fill(0);
  text("SCORE  " + score, 100, 30);
}
