Juego Game;

class Juego {
  PImage player;
  float x, y, d1;
  //juego
  PImage fondo, fondo2;

  int jump = 0;


  Juego() {
    y = 500;
    x = 300;

    d1 = 200;
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
  void saltar() {
    if (y == height - 185) {
      jump =- 25;
    }
  }

  void movimiento() {
    jump = jump + 1;
    y = y + jump;
    if (y >= height - 185) {
      y = height - 185;
      jump = 0;
    }
  }
  
  void dibujar() {
    imageMode(CENTER);
    image(player, x, y, d1, d1);
  }
}
