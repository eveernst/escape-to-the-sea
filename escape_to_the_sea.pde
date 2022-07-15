//evelyn

//estados
int state = 0;

void setup() {
  size(1800, 700, P2D);
  frameRate(60);

  //llamada a clases
  Menu = new MenuPrincipal();
  Game = new Juego();

  rival = new Enemigos();

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
  Game.fondo =  loadImage("backg.jpg");
  Game.fondo2 = loadImage("backg2.jpg");

  //gameover
  gameover = new Gameover();
  gameover.Zzz = loadImage("X.png");

  //personaje prueba
  Game.player = loadImage("Luffy.png");
}

void draw() {

  //menu
  if (state == 0) {
    Menu.homeScreen();
  }

  //juego
  if (state == 1 ) {
    Game.backpage();
    //enemigos
    rival.move();    
    rival.dibujar();
    rival.colision();

    // protagonista
    Game.movimiento();
    Game.dibujar();
  }

  //historia
  if (state == 3) {
    Menu.historia();
  }

  //controles
  if (state == 4) {
    Menu.control();
    Game.movimiento();
    Game.dibujar();
  }

  if (state == 5) {
    //gameover
    gameover.fin();
    Menu.botonVolver(0);
  }

  //if (state == 6) {
  //}
}
