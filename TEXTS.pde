// TEXTS

PFont font;

String FRAMERATE = "FPS: "+FPS; // DISPLAY the FRAME PER SECONDS | AFFICHE les IMAGES PAR SECONDES
String RULE_KEY_ONE = "Move with left, up, right, down for PLAYER ONE"; // DISPLAY the RULE MOVEMENT | AFFICHE la REGLE de MOUVEMENT du JOUEUR UN
String RULE_KEY_TWO = "Move with z,q,s,d for PLAYER TWO"; // DISPLAY the RULE MOVEMENT | AFFICHE la REGLE de MOUVEMENT du JOUEUR DEUX

String PROGRAMMER = "PROGRAMMER: LoubiTek"; // DISPLAY the PROGRAMMER NAME | AFFICHE le NOM du PROGRAMMEUR
int PROGRAMMER_Y = 0; // COORDINATE 0 | COORDONNEE 0

String AUDIOMAKER = "AUDIOMAKER: LoubiTek"; // DISPLAY the NAME of AUDIOMAKER | AFFICHE le NOM du FABRIQEUR AUDIO

String PLAY = "PLAY TEMPLATE"; // DISPLAY the TEMPLATE TITLE | AFFICHE le MODELE TITRE

// FONT
void FONT()
{
  // CREATE and LOAD font MOD_GOTHIC.ttf | CREE et CHARGE la POLICE d'ECRITURE
  font = createFont("font/mod_gothic.ttf",72); // REPLACE this with YOUR FONT | REMPLACE ceci avec VOTRE POLICE d'ECRITURE
}

// FPS TEXT
void FPS_TEXT()
{
  textFont(font);
  textSize(48); // TAILLE du TEXTE
  text(FRAMERATE,8,32);
}

// REGLE
void RULE()
{
  text(RULE_KEY_ONE,320,600);
  text(RULE_KEY_TWO,320,640);
}

// TITRE
void TITLE() 
{
  textSize(72);
  text("TEMPLATE",W/2-64,72);
}

// EQUIPE
void TEAM()
{
  textSize(16);
  stroke(255);
  text(PROGRAMMER,0,PROGRAMMER_Y);
  if(PROGRAMMER_Y >= H)
  {PROGRAMMER_Y = 0;}
  
  text(AUDIOMAKER,0,PROGRAMMER_Y+++32);
}

// JOUE
void PLAY()
{
  textSize(72);
  text(PLAY,W/2-128,64);
}
