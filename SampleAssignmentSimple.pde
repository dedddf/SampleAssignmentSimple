private double fractionLength = .75; 
private int smallestBranch = 10; 
private double branchAngle = .4;  //2
//int braLn = 100;
//int gg = 60;
int c = 0;
int b = 0;
int l = 0;
int i = 0;
public void setup() 
{   
  size(640,480);    
} 
public void draw() 
{   
  background(0);   
  stroke(c-b,0,255-c+b);    
  for(int x = 100; x > 50; x -= 10){
    drawBranches(330,250,x+l,6*Math.PI);
    drawBranches(330,250,x+l,3*Math.PI);
  frameRate(20);
    if(c<255){
      c+= 1;
    }else{
      b+=1;
    }
    if(b>255){
      c=0;
      b=0;
    }
  }
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
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
//drawBranches(320,380,braLn,3*Math.PI);
  //drawBranches(320,380,braLn,Math.PI/2);
  //drawBranches(320,380,braLn,3*Math.PI/2);
  //drawBranches(320,380,braLn,3*Math.PI/.5);//will add later 
  //drawBranches(450,250,braLn,3*Math.PI);
  
  //int braLn = 100;
//int gg = 60;
