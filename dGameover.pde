Gameover gameover;

class Gameover {
  int maxImages = 8;
  int imageIndex = 0;

  PImage [] images = new PImage[maxImages];

  PImage Zzz;

  Gameover() {
    for (int i = 0; i < images.length; i++) {
      images [i] = loadImage("end_" + i + ".gif");
    }
  }

  void fin() {
    frameRate(15);
    image(images[imageIndex], 0, 0, 1800, 700);
    imageIndex = (imageIndex + 1) % images.length;

    imageMode(CENTER);
    Zzz.resize(1200, 200);
    image(Zzz, width/2, height/2+200);

    textMode(CENTER);
    fill(255);
    textSize(70);
    text("score: " + puntos.puntos, 50,  50);
    noFill();
  }
}
