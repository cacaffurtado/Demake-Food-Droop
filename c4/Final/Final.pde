PImage coracao, fundo, melancia, sanduba, suco, veneno, pou1, pou2, pou3, title;
PFont fonte;

boolean MENU;
boolean JOGO;
boolean GAMEOVER;
boolean okay;

Comida a, b, lixo;
int [] nX = {35, 155, 272, 395, 515};
int Xpou, Ypou;

int aux, vida, score;

int [] record = new int[50];
boolean mostraRecord = false;

void setup () {
  size(600, 800);

  fonte = createFont("fontePou.ttf", 32);
  textAlign(CENTER);
  textFont(fonte);

  coracao = loadImage("coracao.png");
  fundo = loadImage("fundo.png");
  melancia = loadImage("melancia.png");
  suco = loadImage("suco.png");
  sanduba = loadImage("sanduba.png");
  veneno = loadImage("veneno.png");
  pou1 = loadImage("pou1.png");
  pou2 = loadImage("pou2.png");
  pou3 = loadImage("pou3.png");
  title = loadImage("title.png");

  Xpou = 240;
  Ypou = 680;

  aux = 0;
  vida = 3;
  score = 0;

  a = new Comida(nX[0], 0, 10, 10); //x, y, velocidade, rotação
  b = new Comida(nX[4], 0, 4, 10);
  lixo = new Comida(nX[2], 0, 2, 10);

  MENU = true;
  JOGO = false;
  GAMEOVER = false;
}

void draw() {
  if (MENU == true) {
    mostraMenu();
  }

  if (JOGO == true) {
    mostraJogo();
  }

  if (GAMEOVER == true) {
    gameOver();
  }
}

void mostraMenu() {
  okay = false;

  image(fundo, 0, 0, 600, 850);
  image(title, 100, 70, 400, 400);

  if (mouseX < 400 && mouseX > 200 && mouseY < 550 && mouseY > 500) {
    fill(0);
    okay = true;
  } else {
    fill(255, 255, 0);
  }
  rect(200, 500, 200, 50);

  if (mostraRecord) {
    textSize(25);
    fill(0);
    text("RECORD  " + max(record), width/2, 4*height/5);
  }
}

void mostraJogo() {
  image(fundo, 0, 0, 600, 850);
  mostraVida();
  if (vida > 0) {
    okay = false;
    mostraScore();
    mostraPou();
    MEFpou();

    fill(255, 0, 0);
    a.update();
    a.display();
    if (score >= 50) {
      fill(255, 255, 0);
      lixo.lixo();
      lixo.display();
    }
    if (score >= 100) {
      fill(0, 255, 255);
      b.update();
      b.display();
    }
  } else {
    okay = true;
    GAMEOVER = true;
  }
}

void gameOver() {
  a.moveComida = false;
  b.moveComida = false;
  lixo.moveComida = false;

  background(0);

  record = splice(record, score, 0);

  textSize(80);
  fill(255, 0, 0);
  text("GAME", width/2, height/3);
  text("OVER", width/2, height/2);

  textSize(30);
  text("SCORE " + score, width/2, height/2+120);

  textSize(20);
  text("PRESS TO RESTART", width/2, 4*height/5);

  okay = true;
  mostraRecord = true;
}

void mouseReleased() {
  if (okay == true) {
    if (MENU == true) {
      MENU = false;
      JOGO = true;
    }
    if (GAMEOVER == true) {
      GAMEOVER = false;
      MENU = true;
      setup();
    }
  }
}
