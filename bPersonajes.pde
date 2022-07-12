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

  PImage personaje;
  String nombre;

  Personaje(){}
  
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

  Personaje boton(int mx1, int mx2, int my1, int my2,Personaje p, int x, int y ) {
    if (mouseX>mx1 && mouseX<mx2 && mouseY>my1 && mouseY<my2){ p.jugador(x, y);
      if (mousePressed) state = 2;}
   return p;
  }
}
