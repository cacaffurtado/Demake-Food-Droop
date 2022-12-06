PImage coracao, fundo, melancia, sanduba, caveira, pou1, title;
PFont fonte;

boolean MENU;
boolean JOGO;
boolean GAMEOVER;
boolean REGRAS;
boolean CREDITOS;
boolean okay, m1, m2, m3, m4, m5;

Comida a, b, lixo;
int [] nX = {35, 155, 272, 395, 515};
int Xpou, Ypou;

int aux, vida, score;

int [] record = new int[50];
boolean mostraRecord = false;

color c1, c2, c3, c4;

void setup () {
  size(600, 800);

  fonte = createFont("fontePou.ttf", 32);
  textAlign(CENTER);
  textFont(fonte);
  noStroke();

  c1 = color(50, 220, 220);
  c2 = color(255, 100, 100);
  c3 = color(255, 200, 200);
  c4 = color(0, 120, 120);

  coracao = loadImage("coracao.png");
  fundo = loadImage("fundo.png");
  melancia = loadImage("melancia.png");
  sanduba = loadImage("sanduba.png");
  caveira = loadImage("caveira.png");
  pou1 = loadImage("pou1.png");
  title = loadImage("title.png");

  criaJogo();
}

void criaJogo() {
  Xpou = 240;
  Ypou = 680;

  aux = 0;
  vida = 3;
  score = 0;

  a = new Comida(nX[0], 0, 5, 10, melancia, 1); //x, y, velocidade, rotação, imagem
  b = new Comida(nX[4], 0, 8, 10, sanduba, 2);
  lixo = new Comida(nX[2], 0, 7, 10, caveira, 3);

  MENU = true;
  m1 = false;
  m2 = false;
  m3 = false;
  m4 = false;
  m5 = false;
  REGRAS = false;
  CREDITOS = false;

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

  if (REGRAS == true) {
    mostraRegras();
  }

  if (CREDITOS == true) {
    mostraCreditos();
  }

  if (GAMEOVER == true) {
    gameOver();
  }
}

void mouseReleased() {
  if (okay == true) {
    if (MENU == true) {
      if (m1 == true) {
        MENU = false;
        JOGO = true;
      }
      if (m2 == true) {
        MENU = false;
        REGRAS = true;
      }
      if (m3 == true) {
        MENU = false;
        CREDITOS = true;
      }
    }

    if (REGRAS == true) {
      if (m4 == true) {
        REGRAS = false;
        MENU = true;
        setup();
      }
      if (m5 == true) {
        REGRAS = false;
        JOGO = true;
      }
    }

    if (CREDITOS == true) {
      if (m4 == true) {
        CREDITOS = false;
        MENU = true;
        setup();
      }
      if (m5 == true) {
        CREDITOS = false;
        JOGO = true;
      }
    }

    if (GAMEOVER == true) {
      GAMEOVER = false;
      MENU = true;
      setup();
    }
  }
}
