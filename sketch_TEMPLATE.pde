// Project: TEMPLATE | by LoubiTek | 2021
// Projet: MODELE | par LoubiTek | 2021

/* THIS BASE PROJECT WILL SERVE AS YOUR DEFAULT PROJECT. You are free to modify it!
I use FRENCH commentary for French LEARN :)

/* CE PROJET DE BASE VOUS SERVIRA COMME PROJET PAR DEFAUT. VOUS ETES LIBRE DE LE MODIFIER !
J'utilise des commentaires ANGLAIS pour apprendre :)

CC0 LICENSE */
// LICENCE CC0

// Booleans
boolean GAMELOOP = true; // Initalize the GAMEPLOOP (true) | Initialise la BOUCLE de JEU à VRAI
boolean CREDIT = true; // Initialize the CREDIT (true) for first RUN CREDIT | Initialise les CREDIT (VRAI) pour commencer en premier
boolean GAME = false; // Initialize the GAME (false) for RUN GAME second | Initialise le JEU à FAUX pour executer en deuxième

// SETTINGS | PARAMETRES
void settings()
{
  size(W,H,ENGINE); // WIDTH, HEIGHT, ENGINE = 1280 * 720: P2D by default | LARGEUR, HAUTEUR, MOTEUR = 1280 * 720: P2D par défaut
  smooth(AA); // ANTI_ALIASSING = 0 by default | ANTICRENELAGE = 0 par défaut
}

// LOAD | CHARGE
void LOAD()
{
  INFO();
  FONT();
  MUSIC();
  //imageMode(CENTER);
  IMAGES();
}

// SETUP | CONFIGURATION
void setup()
{
  frameRate(FPS); // FRAME PER SECONDS = 60 by default | IMAGE PAR SECONDES = 60 par défaut
  background(BLACK); // COLOR BACKGROUND = 0 by default | COULEUR ARRIERE PLAN = 0 par défaut
  LOAD(); // LOADING THE INFO, FONT, MUSIC and IMAGES | CHARGEMENT de INFO, POLICE, MUSIQUE, IMAGES
}

// DRAW | DESSINE
void draw()
{
  if (GAMELOOP == CREDIT) // IF GAMELOOP (true) == CREDIT (true) | SI BOUCLE de JEU (VRAI)
  {
    CREDIT(); // LUNCH CREDIT | LANCER CREDIT
  }
  else GAME(); // ELSE GAME START | SINON COMMENCER JEU
}

// GAME | JEU
void GAME()
{
  PLAYLIST(); // PLAY THE MUSIC AND EFFECT
  BG(); // SHOW BACKGROUND
  FPS_TEXT(); // SHOW THE FPS
  RULE(); // SHOW THE RULES
  PLAYER(); // SHOW PLAYER
  TITLE(); // SHOW TITLE
  SWORD(); // SHOW SWORD
  GUN(); // SHOW GUN
}

// CREDIT | CREDIT
void CREDIT()
{
  background(BLACK); // BACKGROUND (0) | ARRIERE PLAN NOIR
  TEAM(); // YOUR TEAM | VOTRE EQUIPE
  PLAY(); // PLAY TEXT | JOUER TEXTE
  if (keyPressed || mousePressed) // IF KEYPRESSED OR MOUSEPRESSED | SI TOUCHE du CLAVIER ou SOURIS PRESSER
  {
    CREDIT = false; // CREDIT (false) for lunch GAME | CREDIT (FAUX) pour LANCER JEU
  }
}
