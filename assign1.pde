PImage background1Img;
PImage background2Img;
PImage fighterImg;
PImage treasureImg;
PImage bloodImg;
PImage enemyImg;
int x1;
int x2;
int x3;//treasure
int y3;//treasure
int x4;//blood
int x5;//enemy
int y5;//enemy

void setup(){  
  size(640,480);
  background1Img = loadImage("img/bg1.png");
  background2Img = loadImage("img/bg2.png");
  fighterImg = loadImage("img/fighter.png");
  treasureImg = loadImage("img/treasure.png");
  bloodImg = loadImage("img/hp.png");
  enemyImg = loadImage("img/enemy.png");
  
  x1 = 640;
  x2 = 0;
  x3 = floor(random(500));  
  y3 = floor(random(400));
  x4 = floor(random(200));
  x5 = 0;
  y5 = floor(random(400));

}

void draw(){
//scroll background 
  background(0);
  image(background1Img,x1-640,0);
  image(background2Img,x2-640,0);
  
  x1 = x1+1;
  x2 = x2+1;

  x1 = x1%1280;
  x2 = x2%1280;
  
//fighter
  image(fighterImg,580,240);
  
//treasure
  image(treasureImg,x3,y3);

//blood
  noStroke();
  fill(255,0,0);
  rect(33,15,x4,15);//blood bar
  image(bloodImg,20,10);

//enemy
  image(enemyImg,x5-61,y5);
  x5 = x5+3;
  x5 = x5%762;
  
}
