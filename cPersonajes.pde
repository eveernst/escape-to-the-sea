Personaje Luffy;
Personaje Zoro;
Personaje Nami;
Personaje Usopp;
Personaje Sanji;
Personaje Chopper;
Personaje Robin;
Personaje Franky;
Personaje Brook;

class Personaje {

  PImage personaje;
  String nombre;

  Personaje(PImage P_personaje, String P_nombre) {
    personaje = P_personaje;
    nombre = P_nombre;
  }

  void jugador(int x, int y) {
    imageMode(CENTER);
    image(personaje, x, y);
    text(nombre, x - 15, y + 90);

    //selector de personaje
  }

  void personajeSelector() {
    //if (mouseX> && mouseX<width/2+150 && mouseY>195 && mouseY<310) {
    //  image(personaje, width/2, 260, 300, 100);

    //  if (mousePressed) {
    //    state = 2;
    //  }
    //}
  }
}
