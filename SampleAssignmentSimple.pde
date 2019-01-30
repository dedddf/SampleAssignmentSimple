
void setup()
{
  size(300,600);
}
int x = 0;
int y = 0;
int b = 0;
void draw()
{
  background(0, 0, 0);
  head();
  face();
  bigmath();
  
}
void head()
{
  fill(255,255,0);
  ellipse(150,50 + x- y,80,80);
}
void face()
{
  arc(150,50 + x - y,60,60,PI/8,7*PI/8);
  fill(0,0,0);
  
  ellipse(135,40 + x - y,10,15);
  ellipse(165,40 + x- y,10,15);
}
void bigmath()
{
    
  if(x<510){
  x+= 5;
  }else{
  y+=5;
  }
  if(y>510){
  x=0;
  y=0;
  }

}
