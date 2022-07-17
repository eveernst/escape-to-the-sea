Enemigos rival;

class Enemigos {

  //enemigos
  PImage marin, gaviota;
  float posx, posy, pox, px, py, vel, d;

  Enemigos() {
    px = 3000;
    py = 300;

    posx = 2000;
    posy = 500;

    pox = 2000;

    vel = 2;
  }

  void move() {
    //enemigo1
    if (posx >= -50) {
      posx = posx - 10;
    } else {
      posx = 2000;
    }

    //enemigo2
    if (pox >= -50 && puntos.puntos > 550) {
      pox = pox - 10;
    } else {
      pox = 2000;
    }

    //enemigo3
    if (px >= -50 && puntos.puntos > 2000) {
      px = px - 15;
    } else {
      px = 2000;
      py = random(100, 600);
    }
  }

  void enemigo1() {
    imageMode(CENTER);
    image(marin, posx, posy, 150, 150);

    d = dist(Game.x, Game.y, posx, posy - 35);
    if (d < Game.diam1/2 + 50) {
      state = 5;
    } else {
      posx = posx - vel;
    }
  }

  void enemigo2() {
    imageMode(CENTER);
    image(marin, pox, posy, 150, 150);

    d = dist(Game.x, Game.y, pox, posy - 35);
    if (puntos.puntos > 250 && d < Game.diam1/2 + 50) {
      state = 5;
    } else {
      pox = pox - vel*3;
    }
  }

  void enemigo3() {
    d = dist(Game.x, Game.y, px, py);
    if (puntos.puntos > 400 && d < Game.diam1/2 + 50) {
      state = 5;
    } else {
      image(gaviota, px, py, 200, 200);
      px = px - vel;
    }
  }
}
