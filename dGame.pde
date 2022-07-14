Juego Game;

class Juego {

  //juego
  PImage fondo, fondo2;

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
}
