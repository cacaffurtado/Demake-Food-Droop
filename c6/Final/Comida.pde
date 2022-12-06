class Comida {
  int x, y; //Posição X e Y
  int v; //Velocidade
  int obj; //Objeto

  char i;

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

  Comida(int nx, int ny, int nv, char ix, int ox) {
    x = nx;
    y = ny;
    v = nv;
    i = ix;
    obj = ox;
  }

  void update() {
    if (moveComida()) {
      y += v; //acrescenta o v no y
      if (y > height - 100 && estadoComida()) { //a comida foi comida
        score += 10;
        y = 0; //obj sobe
        aux++;
        println(aux);
      }
      if (y > height - 50) { //a comida caiu
        vida--;
        y = 0; //obj sobe
        aux++;
        println(aux);
      }

      if (y == 0) { //se o obj subiu
        x = nX[int(random(0, 5))];
        if(obj == 1)
        i = img[int(random(0,2))];
        if(obj == 2)
        i = img[int(random(2,4))];
      }
    }
  }

  void lixo() {
    if (moveComida()) { //se o jogo começou
      y += v;
      if (y > height - 100 && estadoComida()) { //se a bomba foi comida
        vida--;
        y = 0; //obj sobe
        aux++;
        println("aux" + aux);
      }
      if (y > height - 50) { //se a bomba caiu
        y = 0; //obj sobe
        aux++;
        println(aux);
      }
      if (y == 0) {//se o obj subiu
        x = nX [int(random(0, 5))];
      }
    }
  }

  void display() {
    if (i == 'M'){
    image(M, x, y, 50, 50);
    }
    else if(i == 'A'){
      image(A, x, y, 50, 50);
    }
      else if(i == 'S'){
      image(S, x, y, 50, 50);
    }
     else if(i == 'R'){
      image(R, x, y, 50, 50);
    }
    else if(i == 'C'){
      image(C, x, y, 50, 50);
    }
  }
}
