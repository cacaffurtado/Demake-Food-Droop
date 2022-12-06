//MENU
void mostraMenu() {
  okay = false;
  m1 = false;
  m2 = false;
  m3 = false;

  image(fundo, 0, 0, 600, 850);
  image(title, 100, 70, 400, 400);

  if (mouseX > 200 && mouseY > 500 && mouseX < 400 && mouseY < 550) {
    fill(c2, 95);
    okay = true;
    m1 = true;
  } else {
    fill(c2);
  }
  rect(200, 500, 200, 50);

  if (mouseX > 50 && mouseY > 650 && mouseX < 200 && mouseY < 690) {
    fill(c1, 95);
    okay = true;
    m2 = true;
  } else {
    fill(c1);
  }
  rect(50, 650, 150, 40);

  if (mouseX > 400 && mouseY > 650 && mouseX < 550 && mouseY < 690) {
    fill(c1, 99);
    okay = true;
    m3 = true;
  } else {
    fill(c1);
  }
  rect(400, 650, 150, 40);

  fill(255);
  textSize(20);
  text("JOGAR", width/2, 530);
  textSize(15);
  text("REGRAS", 125, 675);
  text("CREDITOS", 475, 675);

  if (mostraRecord) {
    textSize(20);
    fill(0);
    text("RECORD:  " + max(record), width/2, 610);
  }
}

//REGRAS
void mostraRegras() {
  okay = false;
  m2 = false;
  m4 = false;
  m5 = false;
  image(regras, 0, 0, width, height);

  textSize(50);
  fill(200, 50, 50);
  text("REGRAS", width/2, height/8);
  textSize(15);

  text("-   Evite comer bombas", width/2.8, height/1.8);
  text("-   Cuidado  com  as  suas  vidas", width/2.25, height/1.6);

  fill(c2);
  text("->   Para  movimentar  o  Pou", width/2.75, height/4);
  text("->   Para  ganhar  pontos,  coma  comidinhas:", width/2, height/3);
  text("->   Cuidado  com  as  suas  vidas", width/2.75, height/2.03);
  text("->   E  o  mais  importante:  se  divirta  !", width/2, height/1.45);

  fill(c1);
  text("Chame  seus  amigos  e  veja  quem  tem  o", width/2, 3*height/4);
  text("maior  record !!!", width/2, 3.15*height/4);

  if (mouseX > 50 && mouseY > 700 && mouseX < 200 && mouseY < 740) {
    fill(c1, 95);
    okay = true;
    m4 = true;
  } else {
    fill(c1);
  }
  rect(50, 700, 150, 40);

  if (mouseX > 400 && mouseY > 700 && mouseX < 550 && mouseY < 740) {
    fill(c2, 95);
    okay = true;
    m5 = true;
  } else {
    fill(c2);
  }
  rect(400, 700, 150, 40);

  fill(255);
  textSize(15);
  text("MENU", 125, 725);
  text("JOGAR", 475, 725);
}

//CRÉDITOS
void mostraCreditos() {
  okay = false;
  m3 = false;
  m4 = false;
  m5 = false;
  background(c3);

  textSize(50);
  fill(200, 50, 50);
  text("CREDITOS", width/2, height/8);

  textSize(35);
  fill(c2);
  text("Carolina Furtado", width/2, 2.1*height/8);
  text("&", width/2, 3.3*height/8);
  text("Maria Clara", width/2, 4.1*height/8);

  textSize(20);
  fill(c1);
  text("github.com/cacaffurtado", width/2, 2.7*height/8);
  text("github.com/", width/2, 4.7*height/8);

  textSize(20);
  fill(200, 50, 50);
  text("Trabalho final MAMI", width/2, 6*height/8);

  textSize(15);
  text("Sistemas e Midias Digitais - UFC", width/2, 6*height/8+40);
  text("2022.2", width/2, 6*height/8+65);

  if (mouseX > 50 && mouseY > 700 && mouseX < 200 && mouseY < 740) {
    fill(c1, 95);
    okay = true;
    m4 = true;
  } else {
    fill(c1);
  }
  rect(50, 700, 150, 40);

  if (mouseX > 400 && mouseY > 700 && mouseX < 550 && mouseY < 740) {
    fill(c2, 95);
    okay = true;
    m5 = true;
  } else {
    fill(c2);
  }
  rect(400, 700, 150, 40);

  fill(255);
  textSize(15);
  text("MENU", 125, 725);
  text("JOGAR", 475, 725);
}
