PImage regras, coracao, fundo, M, S, R, A, C, pou1, pou2, pou3, title;
PImage p;
PFont fonte;

char sort1, sort2, sort3;

boolean MENU;
boolean JOGO;
boolean GAMEOVER;
boolean REGRAS;
boolean CREDITOS;
boolean okay, play, m1, m2, m3, m4, m5;

Comida a, b, lixo;
char [] img = {'M', 'A', 'R', 'S', 'C'}; //0, 1, 2, 3, 4
int [] nX = {35, 155, 272, 395, 515};
int Xpou, Ypou;

int aux, vida, score, tempo;

int [] record = new int[50];
boolean mostraRecord = false;

color c1, c2, c3, c4;

import processing.sound.*;
SoundFile music, sound;

void setup () {
  size(600, 800);

  music = new SoundFile(this, "PouSong.mp3");
  music.play();
  sound = new SoundFile(this, "PouEat.mp3");

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
  M = loadImage("melancia.png");
  S = loadImage("sanduba.png");
  R = loadImage("refri.png");
  A = loadImage("abacate.png");
  C = loadImage("caveira.png");
  pou1 = loadImage("pou_1.gif");
  pou2 = loadImage("pou_1_delay-0.2s.gif");
  pou3 = loadImage("pou_2_delay-0.2s.gif");
  title = loadImage("title.png");

  criaJogo();
}

void criaJogo() {
  Xpou = 240;
  Ypou = 680;

  aux = 0;
  vida = 3;
  score = 0;

  sort1 = img[int(random(0, 2))];
  sort2 = img[int(random(2, 4))];
  sort3 = 'C';

  a = new Comida(nX[0], 0, 5, sort1, 1); //x, y, velocidade, rotação, imagem
  b = new Comida(nX[4], 0, 8, sort2, 2);
  lixo = new Comida(nX[2], 0, 7, sort3, 3);

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
      setup();
    } //gameover pra menu
  }
}
