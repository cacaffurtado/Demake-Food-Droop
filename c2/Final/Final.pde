int [] nX = {35, 155, 272, 395, 515};
int Xpou, Ypou;

PImage coracao, fundo, pou1;

Comida a, b, lixo;
int pont, vida, score;

final int MENU = 0;
final int JOGO = 1;

int estadoTela = 0;

void setup () {
  size(600, 800);
  textAlign(CENTER);

  coracao = loadImage("coracao.png");
  fundo = loadImage("fundo.png");
  pou1 = loadImage("pou1.png");

  Xpou = 240;
  Ypou = 680;

  vida = 3;
  score = 0;

  a = new Comida(nX[0], 0, 3, 10); //x, y, velocidade, rotação
  b = new Comida(nX[4], 0, 4, 10);
  lixo = new Comida(nX[2], 0, 2, 10);
}

void draw() {
  if (estadoTela == MENU) {
    mostraMenu();
  } else if (estadoTela == JOGO) {
    mostraJogo();
  }
}

void mostraJogo() {
  image(fundo, 0, 0, 600, 800);
  mostraVida();
  if (vida > 0) {
    mostraScore();
    mostraPou();
    MEFpou();

    fill(255, 0, 0);
    a.atualiza();
    a.desenha();
    if (score>=50) {
      fill(255, 255, 0);
      lixo.lixo();
      lixo.desenha();
    }
    if (score>=100) {
      fill(0, 255, 255);
      b.desenha();
      b.atualiza();
    }
  }
}

void mostraMenu() {
  image(fundo, 0, 0, 600, 800);
  if (mouseX < 400 && mouseX > 200 && mouseY < 450 && mouseY > 400) {
    fill(0);
    if (mousePressed) {
      estadoTela = JOGO;
    }
  } else {
    fill(255, 255, 0);
  }
  rect(200, 400, 200, 50);
}
