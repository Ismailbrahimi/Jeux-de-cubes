class Game {
  float radius;
  float distance;
  int vitesse = 5;
  float x = width/2;
  float y = height/2 , z;
  float somme=0;
  float[] numb = {200,600};
  float rest;
  PVector v;
  

  PShape ball;

  Game(float r, float d, PImage img) 
  {
    radius = r;
    distance = d;
    noStroke();
    noFill();
    ball = createShape(SPHERE, radius);
    ball.setTexture(img);
  }

  void show() 
  {
    pushMatrix();
    gamesettings();
    translate(x,height/2,0);
    noStroke();
    noFill();
    shape(ball);
    popMatrix();
//////////////////////////////////////////    
    pushMatrix();
    translate(x2,y2,z2);
    rotateY(frameCount/100.0);
    rotateX(frameCount/100.0);
    fill(255,0,0);
    stroke(0);
    box(50);
    popMatrix();
//////////////////////////////////////////
    pushMatrix();
    translate(x1,y1,z1);
    rotateY(frameCount/100.0);
    rotateX(frameCount/100.0);
    fill(0,0,255);
    stroke(0);
    box(50);
    popMatrix();
//////////////////////////////////////////
    z2=z2+10; 
    z1=z1+10;
  if (z2 == 600) 
  {
    z2 =-3760;
    x2 = random(150,650);
  }
  if(z1 == 600)
  {
    z1 =-1860;
    x1 = random(150,650);
  }

  
  }
  void gamesettings()
  {
    PVector v1 = new PVector(x, y, z);    //sphere
    PVector v2 = new PVector(x1, y1, z1); //box bleu
    PVector v3 = new PVector(x2, y2, z2); //box rouge
    float result = v1.dist(v2);
    float result2 = v1.dist(v3);
    
    if(somme!=10)
    {
      if(result < 10.00)
      {
      somme=somme+1;
      rest = 10-somme;
      println("Collision +1 !! "+rest+" Collisions to go");
      }
    }
    if(somme==10)
    {
    println("victoire !!!\n");  
    println("Cliquez sur 'R' pour ressayer !!!");  
    exit();
    }
    
    if(somme!=10)
    {
      if(result2 < 10.00)
      {
      println("PERDU!! Vous avez touché la balle rouge !");
      exit();
      }
    }
  }
  
  
  void move()
  {
  if (keyPressed == true) 
  {
    if (key == 'd' || key == 'D') 
    {
      x+=vitesse;
    } 
  if(key == 'q'|| key == 'Q')
  {
      x-=vitesse;
  }
  
  if(key == 'r'|| key == 'R')
  {
    launch("C:/Users/ps42/Desktop/sketch");
  }
  if(key == 't'|| key == 'T')
  {
    println("Game terminated");
    exit();
  }
  }
  if(keyPressed == false)
  {
    radius=0;
  }
  }
   
}
