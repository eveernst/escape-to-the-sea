Juego Game;

class Juego {
  PImage player;

  //juego
  PImage fondo, fondo2;

  int jump = 5;
  int y = 500;

  Juego() {
  }

  float Fx1 = 0, Fx2 = -1800;

  void backpage() {

    if (Fx1 <= -1800) Fx1 = 1800;
    if (Fx2 <= -1800) Fx2 = 1800;
    Fx1 = Fx1 - 6;
    Fx2 = Fx2 - 6;

    imageMode(CORNER);
    image(fondo, Fx1, 0, 1800, 900);
    image(fondo2, Fx2, 0, 1800, 900);
  }
  void move() {
    if (keyCode == 32) {
      y = y - jump;
      if (y <= 350) y += jump;
      //if (jump == 15) jump = jump +  5;
    }
    if (y < 450) y = 500;
  }

  void dibujar() {
    imageMode(CENTER);
    image(player, 300, y, 200, 200);
  }
}
