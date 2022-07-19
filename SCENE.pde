// SCENE

boolean Event = true; // EVENEMENT
int[] PLAYER_ONE = {W/2,H/2,32,64}; // JOUEUR UN 
int[] PLAYER_TWO = {W/2-128,H/2,32,64}; // JOUEUR DEUX
byte[] LIFE = {127,64,19,17}; // VIE
float r = 0; // r for ROTATE, YOU USE VARIABLE a for ANGLE | r pour ROTATE, vous pouvez UTILISER la VARIABLE a pour ANGLE.
float L[] = {W,H/2,0,0};

// BACKGROUND
void BG()
{
  // Initialize the background black color and load image background.png | Initialise l'arrière plan noir et charge l'image.
  background(BLACK);
  image(BG_IMG,0,0);
  
  // Create border white color | CREER une BORDURE BLANCHE
  strokeWeight(1);
  stroke(WHITE);
  noFill();
  rect(0,0,W,H);
  
  // PLAY the EFFECT | JOUE L'EFFET
  Effect_01.play();
  
  // TINT| TINDRE
  tint(MAJENTA);
  image(VFX_IMG,64,558,128,128);
  
  // CADRE RULE | CADRE REGLE
  strokeWeight(1);
  stroke(MAJENTA);
  noFill();
  rect(260,554,500,130);
}

// PLAYERS | JOUEURS
void PLAYER()
{
  // DRAW image and rectangle PLAYER ONE | AFFICHE l'IMAGE et le RECTANGLE du JOUEUR UN
  strokeWeight(1);
  stroke(YELLOW);
  rect(PLAYER_ONE[0],PLAYER_ONE[1],PLAYER_ONE[2],PLAYER_ONE[3]);
  image(PLAYER_ONE_IMG,PLAYER_ONE[0],PLAYER_ONE[1],PLAYER_ONE[2],PLAYER_ONE[3]);
  
  // IF PLAYER ONE (W/2) >= WIDTH or PLAYER ONE (W/2) <= 0 | SI JOUEUR UN (W/2) >= LARGEUR ou JOUEUR UN (W/2) <= 0
  if(PLAYER_ONE[0] >= W || PLAYER_ONE[0] <= 0)
  {
    PLAYER_ONE[0] = W/2; // REINITIALIZE the WIDTH PLAYER ONE coordinate X | REINITIALISE les COORDONNEE LARGEUR du JOUEUR UN
  }
  
  // IF PLAYER ONE (H/2) >= HEIGHT or PLAYER ONE (H/2) <= 0 | SI JOUEUR UN (H/2) >= HAUTEUR ou JOUEUR UN (H/2) <= 0
  if(PLAYER_ONE[1] >= H || PLAYER_ONE[1] <= 0)
  {
    PLAYER_ONE[1] = H/2; // REINITIALIZE the HEIGHT PLAYER ONE coordinate Y | REINITIALISE les COORDONNEE HAUTEUR du JOUEUR UN
  }
  
  // DRAW image and rectangle PLAYER TWO | AFFICHE L'IMAGE et le RECTANGLE du JOUEUR DEUX
  strokeWeight(1);
  stroke(MAJENTA);
  rect(PLAYER_TWO[0],PLAYER_TWO[1],PLAYER_TWO[2],PLAYER_TWO[3]);
  image(PLAYER_TWO_IMG,PLAYER_TWO[0],PLAYER_TWO[1],PLAYER_TWO[2],PLAYER_TWO[3]);
  
  // DRAW image and rectangle LIFE | AFFICHE L'IMAGE et le RECTANGLE VIE
  for(byte i = 0; i<2; i++)
  {
    strokeWeight(1);
    stroke(255);
    rect(128+LIFE[0]*i,LIFE[1],LIFE[2],LIFE[3]);
    image(LIFE_IMG,128+LIFE[0]*i,LIFE[1],LIFE[2],LIFE[3]);
    rect(256+LIFE[0]*i,LIFE[1],LIFE[2],LIFE[3]);
    image(LIFE_IMG,256+LIFE[0]*i,LIFE[1],LIFE[2],LIFE[3]);
  }
}

// SWORD
void SWORD()
{
  // DRAW image and rectangle SWORD | AFFICHE L'image et le RECTANGLE EPEE
  translate(W/2,H/2); // ORIGIN (x,y) = CENTER | ORIGINE (x,y)
  
  pushMatrix();
  
  r -= 1; // INCREMENT value -1; | INCREMENTE la VALEUR à -1
  rotate(radians(r)); // ROTATION RADIANS r =-1; | ROTATION RADIANS r = -1
  
  // WEAPON_SWORD | ARME EPEE
  strokeWeight(1);
  stroke(0,255,0);
  rect(0,0,15,44);
  image(SWORD_IMG,0,0,15,44);
  
  popMatrix();
}

void GUN()
{
  // WEAPON GUN | ARME PISTOLER
  rect(512,0,30,20);
  //image(GUN_IMG,512,0,30,20);
}

// KeyPressed
void keyPressed()
{
  // IF KEYPRESSED == EVENT (true) | SI TOUCHE PRESSER == EVENT (VRAI)
  if (keyPressed == Event)
  {
    
    if (key == 'z') // MOVE z letter | BOUGER avec la lettre z
    {
      PLAYER_TWO[1] = PLAYER_TWO[1] - PLAYER_TWO[2];
    }
    if (key == 'q') // MOVE q letter | BOUGER avec la lettre q
    {
      PLAYER_TWO[0] = PLAYER_TWO[0] - PLAYER_TWO[2];
    }
    if (key == 's') // MOVE s letter | BOUGER avec la lettre s
    {
      PLAYER_TWO[1] = PLAYER_TWO[1] + PLAYER_TWO[2];
    }
    if (key == 'd') // MOVE d letter | BOUGER avec la lettre d
    {
      PLAYER_TWO[0] = PLAYER_TWO[0] + PLAYER_TWO[2];
    }
    if (key == CODED)
    {
      if (keyCode == RIGHT) // MOVE RIGHT arrow | BOUGER avec la TOUCHE FLECHER DROIT
      {
        PLAYER_ONE[0] = PLAYER_ONE[0] + PLAYER_ONE[2]; // PLAYER ONE (W/2) = PLAYER ONE (W/2) + PLAYER ONE (64) | JOUEUR UN (W/2) = JOUEUR UN (W/2) + JOUEUR DEUX (64)
      }
      if (keyCode == UP) // MOVE UP arrow | BOUGER avec la TOUCHE HAUT
      { 
        PLAYER_ONE[1] = PLAYER_ONE[1] - PLAYER_ONE[2]; // PLAYER ONE (H/2) = PLAYER ONE (H/2) - PLAYER ONE (64) | JOUEUR UN (H/2) = JOUEUR UN (H/2) - JOUEUR DEUX (64)
      }
      if (keyCode == DOWN) // MOVE DOWN arrow | BOUGER avec la TOUCHE BAS
      {
        PLAYER_ONE[1] = PLAYER_ONE[1] + PLAYER_ONE[2]; // PLAYER ONE (H/2) = PLAYER ONE (H/2) + PLAYER ONE (64) | JOUEUR UN (H/2) = JOUEUR UN (H/2) + JOUEUR DEUX (64)
      }
      if (keyCode == LEFT) // MOVE LEFT arrow | BOUGER avec la TOUCHE GAUCHE
      {
        PLAYER_ONE[0] = PLAYER_ONE[0] - PLAYER_ONE[2]; // PLAYER ONE (W/2) = PLAYER ONE (W/2) - PLAYER ONE (64) | JOUEUR UN (W/2) = JOUEUR UN (W/2) - JOUEUR DEUX (64)
      }
      if (keyCode == ESC) // EXIT the GAME with the ESC key | SI la TOUCHE ECHAP, QUITTER le JEU
      {
        exit();
      }
    }
  }
}
