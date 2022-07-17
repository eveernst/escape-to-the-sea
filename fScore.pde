Score puntos;

class Score {
  int puntos;

  Score() {
    puntos = 0;
  }

  void contador() {
    fill(255);
    textSize(30);
    puntos = puntos + 1;
    text("score: " + puntos, 20, 50);
    noFill();
  }
}
