Juego Game;

class Juego {

  //juego
  PImage fondo;
  PImage fondo2;

  Juego() {
    Fx1 = Fx1 - 10;
    Fx2 = Fx2 - 10;
  }

  float Fx1 = 0;
  float Fx2 = -1800;
  void backpage() {

    if (Fx1 <= -1800) {
      Fx1 = 1800;
    }
    if (Fx2 <= -1800) {
      Fx2 = 1800;
    }

    imageMode(CORNER);
    image(fondo, Fx1, 0, 1800, 900);
    image(fondo2, Fx2, 0, 1800, 900);
  }
}
