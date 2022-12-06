PImage regras, coracao, fundo, pou1, pou2, pou3, title;
PFont fonte;

Comida a, b, lixo;

String [] food = {"melancia", "abacate", "refri", "sanduba"};
String sort1, sort2;

PImage C;
PImage[] gifM, gifS, gifR, gifA;
int numberFrames, f;

boolean MENU, JOGO, GAMEOVER, REGRAS, CREDITOS;
boolean okay, play, m1, m2, m3, m4, m5;

int [] record = new int[50];
boolean mostraRecord = false;

color c1, c2, c3, c4;

import processing.sound.*;
SoundFile song, eat;

void setup () {
  size(600, 800);

  song = new SoundFile(this, "PouSong.mp3");
  eat = new SoundFile(this, "comeu.mp3");

  song.loop();

  fonte = createFont("fontePou.ttf", 32);
  textAlign(CENTER);
  textFont(fonte);
  noStroke();

  c1 = color(0, 200, 200);
  c2 = color(255, 100, 100);
  c3 = color(255, 200, 200);
  c4 = color(0, 120, 120);

  regras = loadImage("REGRAS.png");
  coracao = loadImage("coracao.png");
  fundo = loadImage("fundo.png");
  pou1 = loadImage("pou1.gif");
  pou2 = loadImage("pou2.gif");
  pou3 = loadImage("pou3.gif");
  title = loadImage("title.png");

  criaJogo();
}

void criaJogo() {
  Xpou = 240;
  Ypou = 680;

  vida = 3;
  score = 0;

  numberFrames = 8;
  gifM = new PImage[numberFrames];
  gifA = new PImage[numberFrames];
  gifR = new PImage[numberFrames];
  gifS = new PImage[numberFrames];

  for (int i = 0; i < numberFrames; i++) {
    gifM[i] = loadImage("melancia_"+i+"_delay-0.2s.gif");
    gifA[i] = loadImage("abacate_"+i+"_delay-0.2s.gif");
    gifR[i] = loadImage("refri_"+i+"_delay-0.2s.gif");
    gifS[i] = loadImage("sanduba_"+i+"_delay-0.2s.gif");
  }
  C = loadImage("caveira.png");

  sort1 = food[int(random(0, 2))];
  sort2 = food[int(random(2, 4))];

  //x, y, velocidade, string(imagem)
  a = new Comida(nX[0], 0, 5, sort1);
  b = new Comida(nX[4], 0, 8, sort2);
  lixo = new Comida(nX[2], 0, 7, "caveira");

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
      } //menu pra jogo
      if (m2 == true) {
        MENU = false;
        REGRAS = true;
      } //menu pra regras
      if (m3 == true) {
        MENU = false;
        CREDITOS = true;
      } //menu pra creditos
    }

    if (REGRAS == true) {
      if (m4 == true) {
        REGRAS = false;
        MENU = true;
        song.stop();
        setup();
      } //regras pra menu
      if (m5 == true) {
        REGRAS = false;
        JOGO = true;
      } //regras pra jogo
    }

    if (CREDITOS == true) {
      if (m4 == true) {
        CREDITOS = false;
        MENU = true;
        song.stop();
        setup();
      } //creditos pra menu
      if (m5 == true) {
        CREDITOS = false;
        JOGO = true;
      } //creditos pra jogo
    }

    if (GAMEOVER == true) {
      GAMEOVER = false;
      MENU = true;
      song.stop();
      setup();
    } //gameover pra menu
  }
}
