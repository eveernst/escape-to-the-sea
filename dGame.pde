Juego Game;

class Juego {
  
  //jugador
  PImage player;
  float x, y, diam1;
  
  //juego
  PImage fondo, fondo2;
  float Fx1, Fx2;
  
  //salto
  int jump;
  
  //vida
  boolean vida;


  Juego() {
    y = 500;
    x = 300;
    
    diam1 = 150;
    
    Fx1 = 0;
    Fx2 = -1800;
    
    jump = 0;
    
    vida = true; 
  }

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
    if (y == height - 200) {
      jump =- 25;
    }
  }

  void movimiento() {
    jump = jump + 1;
    y = y + jump;
    if (y >= height - 200) {
      y = height - 200;
      jump = 0;
    }
  }
  
  void dibujar() {
    imageMode(CENTER);
    image(player, x, y, diam1, diam1);
  }
}
