void mostraPou() {
  fill(170, 170, 255);
  image(pou1, Xpou, Ypou, 120, 120);
}

void MEFpou() {
  //COLISÃO - PAREDE
  if (Xpou >= width - 120) {
    Xpou = width - 120;
  }
  if (Xpou <= 0) {
    Xpou = 0;
  }
}

void keyReleased() {
  if (keyCode == RIGHT) {
    Xpou += 120;
  }
  if (keyCode == LEFT) {
    Xpou -= 120;
  }
}
