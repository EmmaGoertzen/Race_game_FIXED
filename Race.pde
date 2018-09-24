//adding images 
PImage imgSun;
PImage imgMoon;
//giving int locations 
int sunLocation = 10;
int moonLocation = 10;
void setup()
{
//adding images 
  imgSun = loadImage ("Sun.png");
  imgMoon = loadImage ("HalfMoon.jpg.png");
//window size
  size(300, 900);
}
void draw()
{
//background colour - blue 
  background(0, 200, 200);
//image sizing and placements 
  image(imgSun, 50, sunLocation);;
  imgSun.resize(0, 50);
  image(imgMoon, 210, moonLocation);
  imgMoon.resize(0, 40);
//winning texts when sun wins 
  textSize(20);
  fill(random(256), random(256), random(256));
  if (sunLocation >= 900)
  {
    text("CONGRATS!!!!!! Moon lost", 30, 450);
  }
  //winning texts when moon wins 
  if (moonLocation >= 900)
  {
    text("GONGRATS!!!!!! Sun lost", 30, 450);
    
  }
  
}
void keyPressed()
{  
//move sun when "a" key is pressed
  if (key == 'a')
  {
    sunLocation = sunLocation+10;
  }
//move moon when "l" key is pressed 
  if (key == 'l')
  {
    moonLocation = moonLocation+10;
  }
}
