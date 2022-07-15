Personaje Luffy;
Personaje Zoro;
Personaje Nami;
Personaje Usopp;
Personaje Sanji;
Personaje Chopper;
Personaje Robin;
Personaje Franky;
Personaje Brook;

Personaje Prota;

class Personaje {

  PImage imagen;
  String nombre;

  Personaje() {
  }

  Personaje(PImage P_personaje, String P_nombre) {
    imagen = P_personaje;
    nombre = P_nombre;
  }

  void dibujar(int x, int y, PImage p) {
    imageMode(CENTER);
    image(p, x, y);
    if (state == 1) text(nombre, x - 15, y + 90);
    //selector de personaje
  }


  void boton(int mx1, int mx2, int my1, int my2, Personaje p) {
    if (mouseX > mx1 && mouseX < mx2 && mouseY > my1 && mouseY < my2)
    {
      if (mousePressed) state = 2;
    }
    //Jugador Prota = new Jugador(p);
  }
}
