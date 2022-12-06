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
  void update() {
    if (moveComida) {
      y += v;
      if (y > height - 170 && estadoComida()) {
        score += 10;
        y = 0;
        aux++;
        println(aux);
      }
      if (y > height - 50) {
        vida--;
        y = 0;
        aux++;
        println(aux);
      }

      if (y == 0) {
        x = nX[int(random(0, 5))];
      }
    }
  }

  void lixo() {
    if (moveComida) {
      y += v;
      if (y > height - 100 && estadoComida()) {
        vida--;
        y = 0;
        aux++;
        println(aux);
      }
      if (y > height - 50) {
        y = 0;
        aux++;
        println(aux);
      }
      if (y == 0) {
        x = nX [int(random(0, 5))];
      }
    }
  }
  
  void display() {
    rect(x, y+v, 50, 50);
  }
}
