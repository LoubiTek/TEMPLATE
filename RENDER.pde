// RENDER | RENDU
int W = 1280; // WIDTH | LARGEUR
int H = 720; // HEIGHT | HAUTEUR
String ENGINE = P2D; // ENGINE | MOTEUR
byte AA = 0; // ANTI ALIASSING | ANTICRENELAGE
byte FPS = 60; // FRAME PER SECONDS | IMAGE PAR SECONDS

void INFO() // INFORMATION
{
  println(W+"*"+H+":"+FPS+":FPS","ENGINE:"+ENGINE); // 1280*720:60 P3D OPENGL
}
