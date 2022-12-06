int [] nX = {35, 155, 272, 395, 515};
int Xpou, Ypou;

PImage coracao, fundo, pou1, title;

Comida a, b, lixo;
int pont, vida, score;

final int MENU = 0;
final int JOGO = 1;
final int GAMEOVER = 2;

int estadoTela = 0;

void setup () {
  size(600, 800);
  textAlign(CENTER);

  coracao = loadImage("coracao.png");
  fundo = loadImage("fundo.png");
  pou1 = loadImage("pou1.png");
  title = loadImage("title.png");

  Xpou = 240;
  Ypou = 680;

  vida = 3;
  score = 0;

  a = new Comida(nX[0], 0, 10, 10); //x, y, velocidade, rotação
  b = new Comida(nX[4], 0, 4, 10);
  lixo = new Comida(nX[2], 0, 2, 10);
}

void draw() {
  if (estadoTela == MENU) {
    mostraMenu();
  } 
  if (estadoTela == JOGO) {
    mostraJogo();
  }
  if (estadoTela == GAMEOVER) {
    gameOver();
  }
}

void mostraJogo() {
  image(fundo, 0, 0, 600, 850);
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
  } else {
    estadoTela = GAMEOVER;
  }
}

void mostraMenu() {
  image(fundo, 0, 0, 600, 850);
  image(title, 100, 70, 400, 400);
  if (mouseX < 400 && mouseX > 200 && mouseY < 550 && mouseY > 500) {
    fill(0);
    if (mousePressed && estadoTela == MENU) {

      estadoTela = JOGO;
      setup();
    }
  } else {
    fill(255, 255, 0);
  }
  rect(200, 500, 200, 50);
  textSize(30);
  fill(0);
  text("RECORD: " + max(record), width/2, 4*height/5);
}
