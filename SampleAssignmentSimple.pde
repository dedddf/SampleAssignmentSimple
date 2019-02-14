private double fractionLength = .85; 
private int smallestBranch = 20; 
double branchAngle = Math.random();  //2
//int braLn = 100;
//int gg = 60;
int c = 0;
int b = 0;
int c1 = 0;
int b1 = 0;
int c2 = 0;
int b2 = 0;
int c3 = 0;
int b3 = 0;
float l = 0;
float i = 0;
public void setup() 
{   
  size(1000,1000);    
} 
public void draw() 
{   
  background(0);   
  stroke(c-b,255-c+b,0);    
  drawBranches(330,500,100+l-i,6*Math.PI);
  stroke(0,c1-b1,255-c1+b1);
  drawBranches(630,500,100+l-i,6*Math.PI);
  stroke(255-c2+b2,0,c2-b2+150);
  drawBranches(830,500,100+l-i,6*Math.PI);
  frameRate(60);
  sizeChange();
  colorChange();
  colorChange1();
  colorChange2();
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  
  double angle1 = angle + Math.random()*10;
  double angle2 = angle - Math.random();
  branchLength= branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);   
  line(x,y,endX2,endY2);
  if(branchLength > smallestBranch){
     drawBranches(endX1,endY1,branchLength, angle1);
     drawBranches(endX2, endY2,branchLength, angle2);
     
  }
} 
public void colorChange(){
  
  if(c<255){
      c+= 15;
    }else{
      b+=15;
    }
    if(b>255){
      c=0;
      b=0;
    }
}
public void sizeChange(){
  if(l<30){
      l+= 1;
    }else{
      i+=1;
    }
    if(i>30){
      l=0;
      i=0;
    }
}
public void colorChange1(){
  
  if(c1<255){
      c1+= 15;
    }else{
      b1+=15;
    }
    if(b1>255){
      c1=0;
      b1=0;
    }
}
public void colorChange2(){
  
  if(c2<255){
      c2+= 15;
    }else{
      b2+=15;
    }
    if(b2>255){
      c2=0;
      b2=0;
    }
}
