MenuPrincipal Menu;

class MenuPrincipal {
  PImage menu, inicio,
  //botones 
  jugar, historia, control, 
  jugar1, historia1, control1, 
  
  atras, seguir;

  void backpage() {
    imageMode(CORNER); image(menu, 0, 0, 1800, 700);
  }

  void homeScreen() {
    imageMode(CORNER);
    image(inicio, 0, 0, 1800, 700);

    //botones
    imageMode(CENTER); image(jugar, width/2, 260, 400, 150); image(historia, 300, 260, 300, 100); image(control, 1500, 260, 300, 100);

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

  void botonVolver(int x) {
    imageMode(CORNER); image(atras, 75, 550, 80, 80);

    //boton atras
    if (mouseX>75 && mouseX<155 && mouseY>550 && mouseY<630) {
      image(atras, 75, 550, 80, 80);
      if (mousePressed) state = x;
    }
  }

  void botonSeguir(int y) {
    imageMode(CORNER); image(seguir, 1645, 550, 80, 80);

    //boton seguir
    if (mouseX>1645 && mouseX<1725 && mouseY>550 && mouseY<630) { image(seguir, 1645, 550, 80, 80);
      if (mousePressed) state = y;
    }
  }

  void historia() {
    Menu.backpage();
    Menu.botonVolver(0);
    Menu.botonSeguir(1);
  }

  void control() {
    Menu.backpage();
    Menu.botonVolver(0);
    Menu.botonSeguir(1);
  }
}
