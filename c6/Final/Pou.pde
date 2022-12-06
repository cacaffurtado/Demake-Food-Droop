void mostraPou() {
  fill(170, 170, 255);
  image(pou1, Xpou, Ypou, 120, 120);
  if (a.estadoComida() && a.y == height - 100||b.estadoComida() && b.y == height - 100||lixo.estadoComida() && lixo.y == height - 100) {
    play = true;
  }
  if (play) {
    tempo++;
    println(tempo);
    if (tempo%60<=20)
      image(pou2, Xpou, Ypou, 120, 120);
    else if (tempo%60>20 && tempo%60<=40)
      image(pou3, Xpou, Ypou, 120, 120);
    else if (tempo%60>40 && tempo%60<60) {
      image(pou1, Xpou, Ypou, 120, 120);
      play = false;
      tempo=0;
    }
  }
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
