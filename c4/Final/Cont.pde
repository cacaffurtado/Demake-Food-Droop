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
  }
  println(vida);
}

void mostraScore() {
  textSize(20);
  fill(0);
  text("SCORE  " + score, 100, 30);
}
