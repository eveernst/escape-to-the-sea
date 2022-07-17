Gameover gameover;

class Gameover {

  PImage gOver;

  PImage Zzz;
  
  int highScore;
  
  Gameover() {
  highScore= 0;
  }

   void fin() {

    image(gOver, 0, 0, 1800, 700);

    imageMode(CENTER);
    Zzz.resize(1000, 150);
    image(Zzz, width/2, 100);

    textMode(CENTER);
    fill(255);
    textSize(30);
    text("score: " + puntos.puntos, 400, 600);
    noFill();

    Menu.botonVolver();
  }
    void highScore() {
    highScore = max(puntos.puntos, highScore);
    textSize(30);
    text("High Score: " + highScore, 1200, 600);
    noFill();
  }
}
