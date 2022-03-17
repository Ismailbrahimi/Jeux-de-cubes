Game ball;
float x2,y2,z2,x1,y1,z1;
PImage ballTexture;
PImage backTexture;
boolean [] keys = new boolean[128];


void setup() {
  size(728, 401, P3D);
  ballTexture = loadImage("ball.jpg");
  backTexture = loadImage("background.jpg");
  ball = new Game(30, 0, ballTexture);
    x2 = random(150,650);
    y2 = height/2;
    z2 = -3760;
    x1 = random(150,650);
    y1 = height/2;
    z1 = -1860;
    println(" -------------------------------------------------------------------------");
    println("|Toucher la balle bleue 10 fois pour gagner !!                            |");
    println("|Warning !! Si vous toucher la balle rouge vous allez perdre            !!|");
    println("|Clique sur 'Q' pour naviguer a gauche et 'D' pour naviguer a droite    !!|");
    println("|Clique sur 'T' pour terminer le jeu                                    !!|");
    println("|Clique sur 'R' pour ressayer le jeu                                    !!|");
    println(" -------------------------------------------------------------------------");
    
}

void draw() {
  lights();
  background(backTexture);
  pointLight(255, 255, 255, 0, 0, 0);
  ball.show();
  ball.move();

}

void keyPressed(){
  keys[key] = true;
  }

void keyReleased(){
    keys[key] = false;
  }
  
