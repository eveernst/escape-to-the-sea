//evelyn ernst

void setup() {
  size(1800, 700);

  //menu
  menu = loadImage("back.png");
  
  inicio = loadImage("f.png");

  //botones
  jugar = loadImage("start.png");
  historia = loadImage("history.png");
  control = loadImage("controls.png");

  jugar1 = loadImage("start1.png");
  historia1 = loadImage("history1.png");
  control1 = loadImage("controls1.png");
  
  atras = loadImage("volver.png");
  seguir = loadImage("seguir.png");

  //juego
  fondo = loadImage("backg.jpg");
  fondo2 = loadImage("backg2.jpg");

  //personajes
  Luffy = new personajes(loadImage("Luffy.png"), "Luffy");
  Zoro = new personajes(loadImage("Zoro.png"), "Zoro");
  Nami = new personajes(loadImage("Nami.png"), "Nami");
  Usopp = new personajes(loadImage("Usopp.png"), "Usopp");
  Sanji = new personajes(loadImage("Sanji.png"), "Sanji");
  Chopper = new personajes(loadImage("Chopper.png"), "Chopper");
  Robin = new personajes(loadImage("Robin.png"), "Robin");
  Franky = new personajes(loadImage("Franky.png"), "Franky");
  Brook = new personajes(loadImage("Brook.png"), "Brook");

  //llamada a clases
  Menu = new menuPrincipal();
  Game = new juego();
}

void draw() {
  frameRate(200);

  //menu
  if (state == 0) {
    Menu.homeScreen();
  }

  //personajes
  if (state == 1) {
    Menu.backpage();
    Menu.botonVolver(0);

    //selector de personajes
    Luffy.jugador(600, 100);
    Zoro.jugador(900, 100);
    Nami.jugador(1200, 100);
    Usopp.jugador(600, 350);
    Sanji.jugador(900, 350);
    Chopper.jugador(1200, 350);
    Robin.jugador(600, 600);
    Franky.jugador(900, 600);
    Brook.jugador(1200, 600);
  }

  //juego
  if (state == 2 ) {
    Game.backpage();
    //enemigos

    // nave
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
