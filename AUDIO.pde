// AUDIO
import ddf.minim.*; // IMPORT MINIM | IMPORTATION de MINIM
Minim minim; // THE SOURCE AUDIO | LA SOURCE AUDIO 

AudioPlayer Music_01; // VARIABLE MUSIC_01
AudioPlayer Effect_01; // VARIABLE EFFECT_01

// MUSIC
void MUSIC()
{
  minim = new Minim(this);
  // LOADING the MUSIC song and EFFECT sound | CHARGEMENT des MUSIQUES et EFFET SON
  Music_01 = minim.loadFile("music/Your_MUSIC.mp3",256); // LOAD YOUR MUSIC | CHARGE VOTRE MUSIQUE
  Effect_01 = minim.loadFile("effect/Your_EFFECT.mp3",256); // LOAD YOUR EFFECT | CHARGE VOTRE EFFET
  // YOU have separate the EFFECT with the new VOID. | VOUS pouvez séparer l'effet avec un nouveau VOID
}

// PLAYLIST
void PLAYLIST()
{
  // PLAY the MUSIC FILE | JOUE le FICHIER MUSIQUE
  Music_01.play();
}
