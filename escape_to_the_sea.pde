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
  gameover = new Gameover();
  puntos = new Score();

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

  //control
  Menu.flecha = loadImage("arrow.png");

  //historia
  Menu.h = loadImage("historia.png");

  //juego
  Game.fondo =  loadImage("backg.jpg");
  Game.fondo2 = loadImage("backg2.jpg");

  //gameover
  gameover.gOver = loadImage("0.gif");
  gameover.Zzz = loadImage("X.png");

  //personaje prueba
  Game.player = loadImage("Luffy.png");

  //enemigo
  rival.marin = loadImage("marin.png");
  rival.gaviota = loadImage("gaviota0.gif");
}

void draw() {

  //menu
  if (state == 0) {
    Menu.homeScreen();
    puntos.puntos = 0;
    rival.px = 2000;
    rival.posx = 2000;
    rival.vel = 2;
  }

  //juego
  if (state == 1 ) {
    Game.backpage();
    //enemigos
    rival.move();
    //rival.moveEnemigo2();
    rival.enemigo1();
    rival.enemigo2();
    rival.enemigo3();


    // protagonista
    Game.movimiento();
    Game.dibujar();

    //score
    puntos.contador();
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

  //gameover
  if (state == 5) {
    gameover.fin();
    gameover.highScore();
  }
}
