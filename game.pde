import java.util.*;
int x,y;
int i;
int t=50;
int[][] monsters= new int[t][2];
int[][] shot=new int[5][2];
Random rand = new Random();
int p1,p2,p;
int count =0;
void setup() 
{
  size(480, 480);
    for(i=0;i<t;i++)
  {
    monsters[i][0] = rand.nextInt(480);
    monsters[i][1] = rand.nextInt(480);
    ellipse(monsters[i][0], monsters[i][1],10,10);
  }
}
void draw() {
  background(100);
  fill(255,0,0);
  ellipse(x, y, 80, 80);
      for(i=0;i<t;i++)
  {
    if(x==monsters[i][0]&&y==monsters[i][1])
    {
      System.out.println("you lose");
     // exit();
    }
    ellipse(monsters[i][0], monsters[i][1],10,10);
    if(monsters[i][0] >x)
    {
      monsters[i][0] = monsters[i][0] -1;
    }
    if(monsters[i][1] >y)
    {
      monsters[i][1] = monsters[i][1] -1;
    }
        if(monsters[i][0] <x)
    {
      monsters[i][0] = monsters[i][0] +1;
    }
    if(monsters[i][1] <y)
    {
      monsters[i][1] = monsters[i][1] +1;
    }
  }

  if(p==1)
  {
  for(i=0;i<shot.length;i++)
  {
    shot[i][0]++;
  //  shot[i][1]++;

 
    ellipse(shot[i][0],shot[i][1],20,20);
      }
  }
  delay(10);
}
void keyPressed()
{
  if(keyCode==UP)
  {
    y=y-20;
  }
    if(keyCode==RIGHT)
  {
    x=x+20;
  }
    if(keyCode==DOWN)
  {
    y = y+20;
  }
    if(keyCode==LEFT)
  {
    x=x-20;
  }
  if(keyCode == SHIFT)
  {
    x=mouseX;
    y=mouseY;
  }
  if(keyCode == TAB)
  {
    if(count<5)
    {
        p=1;
        p1=x;
        p2 = y;
        shot[count][0]=p1;
        shot[count][1]=p2;
        count++;
    }
  }
}