Enemigos rival;
int x1;

class Enemigos {
  int posx, vel, diam;

  Enemigos() {
    posx = 2000;
    vel = 3;
    diam = 100;
  } 

  void move() {
    if (posx >= -50) {
      posx = posx - 10;
    } else {
      posx = 2000;
    }
  }

  void colision() {
  }

  void dibujar() {
    rectMode(CENTER);
    rect(posx, 500, diam, diam);
  }
}
