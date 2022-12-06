class Comida {
  int x, y, v, r;

  boolean moveComida;

  boolean estadoComida() { //Checar a existência de algum bloco
    if (x >= Xpou && x < Xpou + 50) {
      return true;
    }
    return false;
  }

  Comida(int nx, int ny, int nv, int nr) {
    x = nx;
    y = ny;
    v = nv;
    r = nr;
    moveComida = true;
  }
  void atualiza() {
    if (moveComida) {
      y += v;
      if (y > height - 100 && estadoComida()) {
        score += 10;
        y = 0;
        pont++;
        println(pont);
      }
      if (y > height - 50) {
        if (estadoComida()) {
          score += 10;
        } else {
          vida--;
        }
        y = 0;
        pont++;
        println(pont);
      }

      if (y == 0) {
        x = nX [int(random(0, 5))];
        println(x);
      }
    }
  }
  void desenha() {
    rect(x, y+v, 50, 50);
  }
}
