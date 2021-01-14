float a[] = new float[3];
float b[] = new float[3];
float speeda[] = new float[3];
float speedb[] = new float[3];

float x, y;
float sx, sy;
float c = 0; 
float q = 255;
float r = 0;

void setup(){
  size(1080, 800);
  x = randInt(0, 1000);
  y = randInt(0, 700);
  
  sx = 5;
  sy = 5;

   

}


void draw() {
  fill(0, 0, 0);
  rect(0, 0, width, height);

  fill(c, q, r);
  rect(x, y, 30, 30);
  
 
  x += sx;  
  y += sy;
  
  if (x > width - 30) x = 0;  
  else if (x < 0) x = 1050;
 
  if (y > height - 30) y = 0;  
  else if (y < 0) y = 770; 
      
    

}


void keyPressed(){

 if (keyCode == RIGHT) sx = 5;
 if (keyCode == LEFT) sx = -5;
 if (keyCode == DOWN) sy = 5;
 if (keyCode == UP) sy = -5;
  if (keyCode == RIGHT)c = random(255);
 if (keyCode == LEFT) q = random(255);
 if (keyCode == DOWN) r = random(255);
 if (keyCode == UP) c = random(255);
}


int randInt(int x, int y){
  return floor(random(x,y));
  
}
