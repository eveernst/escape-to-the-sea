//evelyn 

//estados
int state = 0;

void setup() {
  size(1800, 700, P2D);
  frameRate(60);

  //llamada a clases
  Menu = new MenuPrincipal();
  Game = new Juego();

  //menu
  Menu.menu = loadImage("back.png");
  
  Menu.inicio = loadImage("f.png");

  //botones
  Menu.jugar = loadImage("start.png");
  Menu.historia = loadImage("history.png");
  Menu.control = loadImage("controls.png");

  Menu.jugar1 = loadImage("start1.png");
  Menu.historia1 = loadImage("history1.png");
  Menu.control1 = loadImage("controls1.png");
  
  Menu.atras = loadImage("volver.png");
  Menu.seguir = loadImage("seguir.png");

  //juego
  Game.fondo = loadImage("backg.jpg");
  Game.fondo2 = loadImage("backg2.jpg");
  
  //personaje prueba
  Game.player = loadImage("Luffy.png");

  //personajes
  Luffy = new Personaje(loadImage("Luffy.png"), "Luffy");
  Zoro = new Personaje(loadImage("Zoro.png"), "Zoro");
  Nami = new Personaje(loadImage("Nami.png"), "Nami");
  Usopp = new Personaje(loadImage("Usopp.png"), "Usopp");
  Sanji = new Personaje(loadImage("Sanji.png"), "Sanji");
  Chopper = new Personaje(loadImage("Chopper.png"), "Chopper");
  Robin = new Personaje(loadImage("Robin.png"), "Robin");
  Franky = new Personaje(loadImage("Franky.png"), "Franky");
  Brook = new Personaje(loadImage("Brook.png"), "Brook");
  
  Prota = new Personaje();
  //jugador = new Jugador(Prota);

}

void draw() {

  //menu
  if (state == 0) {
    Menu.homeScreen();
  }

  //personajes
  //if (state == 1) {
  //  boolean bandera = true;
  //  Menu.backpage();
  //  Menu.botonVolver(0);

  //  //selector de personajes  
  //  if(bandera){
  //  Luffy.dibujar(600, 100, Luffy.imagen);
  //  Zoro.dibujar(900, 100, Zoro.imagen);
  //  Nami.dibujar(1200, 100, Nami.imagen);
  //  Usopp.dibujar(600, 350, Usopp.imagen);
  //  Sanji.dibujar(900, 350, Sanji.imagen);
  //  Chopper.dibujar(1200, 350, Chopper.imagen);
  //  Robin.dibujar(600, 600, Robin.imagen);
  //  Franky.dibujar(900, 600, Franky.imagen);
  //  Brook.dibujar(1200, 600, Brook.imagen);
  //  bandera = false;
  //  }
  //  Prota.boton(550, 650, 50, 200, Luffy);
  //  Prota.boton(850, 950, 50, 200, Zoro);
  //  Prota.boton(1150, 1250, 50, 200, Nami);
  //}

  //juego
  if (state == 1 ) {
    Game.backpage();
    //enemigos

    // protagonista
    Game.movimientoAlien();
    Game.dibujar();
  }

  //historia
  if (state == 3) {
    Menu.historia();
  }

  //controles
  if (state == 4) {
    Menu.control();
  }

  //if (state == 5) {
  //}

  //if (state == 6) {
  //}
}
void keyPressed() {
  if (keyCode == UP) Game.saltar();
}
