int [] nX = {35, 155, 272, 395, 515};

class Comida {
  int x, y; //Posição X e Y
  int v; //Velocidade

  String i;

  boolean moveComida() {
    if (JOGO == true) {
      return true;
    }
    return false; //se o jogo começar
  }

  boolean estadoComida() {
    if (x >= Xpou && x < Xpou + 50) {
      return true; //comida foi comida!
    }
    return false;
  }

  Comida(int nx, int ny, int nv, String ix) {
    x = nx;
    y = ny;
    v = nv;
    i = ix;
  }

  void update() {
    if (moveComida()) {
      y += v; //acrescenta o v no y
      if (frameCount%15. == 0) {
        f++;
      }
      if (f==numberFrames) {
        f=0;
      }

      if (y > height - 80 && estadoComida()) { //a comida foi comida
        eat.play();
        score += 10;
        y = 0; //obj sobe
      }
      if (y > height - 50) { //a comida caiu
        vida--;
        y = 0; //obj sobe
      }

      if (y == 0) { //se o obj subiu
        x = nX[int(random(0, 5))];
        if (i == "melancia" || i == "abacate")
          i = food[int(random(0, 2))];
        if (i == "refri" || i == "sanduba")
          i = food[int(random(2, 4))];
      }
    }
  }

  void lixo() {
    if (moveComida()) { //se o jogo começou
      y += v;
      if (y > height - 80 && estadoComida()) { //se a bomba foi comida
        eat.play();
        vida--;
        y = 0; //obj sobe
      }
      if (y > height - 50) { //se a bomba caiu
        y = 0; //obj sobe
      }
      if (y == 0) {//se o obj subiu
        x = nX [int(random(0, 5))];
      }
    }
  }

  void display() {
    if (i == "melancia") {
      image(gifM[f], x, y, 80, 80);
    } else if (i == "abacate") {
      image(gifA[f], x, y, 80, 80);
    } else if (i == "sanduba") {
      image(gifS[f], x, y, 80, 80);
    } else if (i == "refri") {
      image(gifR[f], x, y, 80, 80);
    } else if (i == "caveira") {
      image(C, x, y, 50, 50);
    }
  }
}
