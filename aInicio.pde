MenuPrincipal Menu;

class MenuPrincipal {
  PImage menu, inicio, flecha, h,
    //botones
    jugar, historia, control,
    jugar1, historia1, control1,

    atras, seguir;

  void backpage() {
    imageMode(CORNER);
    image(menu, 0, 0, 1800, 700);
  }

  void homeScreen() {
    imageMode(CORNER);
    image(inicio, 0, 0, 1800, 700);

    //botones
    imageMode(CENTER);
    image(jugar, width/2, 260, 400, 150);
    image(historia, 300, 260, 300, 100);
    image(control, 1500, 260, 300, 100);

    //boton start
    if (mouseX>width/2-200 && mouseX<width/2+200 && mouseY>195 && mouseY<310) {
      image(jugar1, width/2, 260, 400, 150);
      if (mousePressed) state = 1;
    }
    //boton historia
    if (mouseX>300-150 && mouseX<300+150 && mouseY>195 && mouseY<310) {
      image(historia1, 300, 260, 300, 100);
      if (mousePressed) state = 3;
    }
    //boton control
    if (mouseX>1500-150 && mouseX<1500+150 && mouseY>195 && mouseY<310) {
      image(control1, 1500, 260, 300, 100);
      if (mousePressed) state = 4;
    }
  }

  void botonVolver() {
    imageMode(CORNER);
    image(atras, 75, 550, 80, 80);

    //boton atras
    if (mouseX>75 && mouseX<155 && mouseY>550 && mouseY<630) {
      image(atras, 75, 550, 80, 80);
      if (mousePressed) state = 0;
    }
  }

  void historia() {
    Menu.backpage();
    Menu.botonVolver();

    imageMode(CENTER);
    image(h, width/2 + 75, height/2, 1500, 500);
  }

  void control() {
    Menu.backpage();
    Menu.botonVolver();

    textMode(CORNER);
    fill(255);
    textSize(70);
    text("press 'up' arrow", width/2 + 25, height/2 - 25);

    image(control, width/2 - 125, height/2 - 300);
    image(flecha, width/2, height/2, 500, 300);
  }
}
