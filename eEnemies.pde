Enemigos rival;

class Enemigos {
  //posicion del enemigo
  PImage zoro;
  float posx, posy, vel;

  Enemigos() {
    posx = 2000;
    posy = 500;
    
    vel = 10;
  }

  void move() {
    if (posx >= -50) {
      posx = posx - 10;
    } else {
      posx = 2000;
    }
  }

  void dibujar() {
    imageMode(CENTER);
    image(zoro, posx, posy, 150, 150);
  }

  void colision() {
    float d = dist(Game.x, Game.y, posx, posy - 35);
    if (d < Game.diam1/2 + 50) {
      state = 5;
    } else {
      posx = posx - vel;
    }
  }
}
