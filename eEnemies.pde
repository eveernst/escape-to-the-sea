Enemigos rival;

//posicion del enemigo
float posx, posy, d2, d;
class Enemigos {

  Enemigos() {
    posx = 2000;
    posy = 500;

    d2 = 150;
  }

  void move() {
    if (posx >= -50) {
      posx = posx - 10;
    } else {
      posx = 2000;
    }
  }

  void dibujar() {
    ellipseMode(CENTER);
    fill(0);
    ellipse(posx, posy, d2, d2);
  }

  void colision() {
    //d = dist(posx, posy, Game.x, Game.y);
    //if (d < d2/2 + Game.d1/2) {
    //  state = 5;
    //} else {
    //  Game.dibujar();
    //  rival.dibujar();
    //}
    if (!(posx > Game.x+Game.d1 || posy > Game.y+Game.d1 || Game.x > posx + d2
      || Game.y > posy + d2)) {
      state = 5;
    } else {
      state = 1;
    }
  }
}
