personajes Luffy;
personajes Zoro;
personajes Nami;
personajes Usopp;
personajes Sanji;
personajes Chopper;
personajes Robin;
personajes Franky;
personajes Brook;

class personajes {

  PImage personaje;
  String nombre;

  personajes(PImage P_personaje, String P_nombre) {
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
