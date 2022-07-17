Gameover gameover;

class Gameover {
  
  int vidas;
  boolean fin;

  PImage gOver;

  PImage Zzz;

  Gameover() {
  }

  void fin() {
    
    image(gOver, 0, 0, 1800, 700);

    imageMode(CENTER);
    Zzz.resize(1200, 200);
    image(Zzz, width/2, height/2+200);

    textMode(CENTER);
    fill(255);
    textSize(70);
    text("score: " + puntos.puntos, 50, 50);
    noFill();
  }
}
