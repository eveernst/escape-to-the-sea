//evelyn 

//estados`
int state = 0;

void setup() {
  size(1800, 700);
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

}

void draw() {

  //menu
  if (state == 0) {
    Menu.homeScreen();
  }

  //personajes
  if (state == 1) {
    boolean bandera = true;
    Menu.backpage();
    Menu.botonVolver(0);

    //selector de personajes  
    if(bandera){
    Luffy.jugador(600, 100);
    Zoro.jugador(900, 100);
    Nami.jugador(1200, 100);
    Usopp.jugador(600, 350);
    Sanji.jugador(900, 350);
    Chopper.jugador(1200, 350);
    Robin.jugador(600, 600);
    Franky.jugador(900, 600);
    Brook.jugador(1200, 600);
    bandera = false;
    }
    Prota.boton(600, 650,100,300,Luffy,600,100);
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
