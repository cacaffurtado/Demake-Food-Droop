void mostraPou() {
  fill(170, 170, 255);
  image(pou1, Xpou, Ypou, 120, 120);

  //COLISÃO - PAREDE
  if (Xpou >= width - 120) {
    Xpou = width - 120;
  }
  if (Xpou <= 0) {
    Xpou = 0;
  }

  MEFpou();
}

void MEFpou() {
  if (a.estadoComida() && a.y == height - 80 
    || b.estadoComida() && b.y == height - 80 
    || lixo.estadoComida() && lixo.y == height - 80) {
    play = true;
  }
  if (play) {
    tempo++;
    println(tempo);
    if (tempo%60<=5) {
      sound.play();
      image(pou2, Xpou, Ypou, 120, 120);
    } else if (tempo%60>5 && tempo%60<=10)
      image(pou3, Xpou, Ypou, 120, 120);
    else if (tempo%60>10 && tempo%60<15) {
      image(pou1, Xpou, Ypou, 120, 120);
      play = false;
      tempo=0;
    }
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
