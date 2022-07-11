juego Game;

class juego {

  juego() {
    b1 = fondo;
    b2 = fondo2;
  }

  float Fx1 = 0;
  float Fx2 = -1800;
  void backpage() {

    Fx1 = Fx1 - 10;
    Fx2 = Fx2 - 10;

    if (Fx1 <= -1800) {
      Fx1 = 1800;
    }
    if (Fx2 <= -1800) {
      Fx2 = 1800;
    }

    imageMode(CORNER);
    image(b1, Fx1, 0, 1800, 900);
    image(b2, Fx2, 0, 1800, 900);
  }
}
