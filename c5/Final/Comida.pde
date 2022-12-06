class Comida {
  int x, y; //Posição X e Y
  int v; //Velocidade
  int r; //Rotação
  int obj; //Objeto

  PImage i;

  boolean moveComida() {
    if (JOGO == true) {
      return true;
    }
    return false;
  }

  boolean estadoComida() {
    if (x >= Xpou && x < Xpou + 50) {
      return true; //Foi comida!
    }
    return false;
  }

  Comida(int nx, int ny, int nv, int nr, PImage ix, int ox) {
    x = nx;
    y = ny;
    v = nv;
    r = nr;
    i = ix;
    obj = ox;
  }

  void update() {
    if (moveComida()) {
      y += v;
      if (y > height - 100 && estadoComida()) {
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
    if (moveComida()) {
      y += v;
      if (y > height - 100 && estadoComida()) {
        vida--;
        y = 0;
        aux++;
        println("aux" + aux);
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
    image(i, x, y, 50, 50);
  }
}
