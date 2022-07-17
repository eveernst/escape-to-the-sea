Enemigos rival;

class Enemigos {

  //enemigo1
  PImage marin;
  float posx, posy, vel;

  //enemigo2
  PImage gaviota;
  float px, py;

  Enemigos() {
    px = 2500;
    py = 300;

    posx = 2000;
    posy = 500;
    vel = 3;
  }

  void move() {
    if (posx >= -50) {
      posx = posx - 10;
    } else {
      posx = 2000;
    }

    if (px >= -50) {
      px = px - 10;
    } else {
      px = 2000;
    }
  }

  void enemigo1() {
    imageMode(CENTER);
    image(marin, posx, posy, 150, 150);

    float d = dist(Game.x, Game.y, posx, posy - 35);
    if (d < Game.diam1/2 + 50) {
      state = 5;
    } else {
      posx = posx - vel;
    }
  }

  void enemigo2() {
    if (puntos.puntos > 300) {
      image(gaviota, px, py, 200, 200);
    }
    float d = dist(Game.x, Game.y, px, py);
    if (puntos.puntos > 300 && d < Game.diam1/2 + 50) {
     state = 5;
    } else {
      px = px - vel;
    }
  }
}
