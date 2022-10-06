void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  int sum = 0;
  background(197,128,234);
  for (int y = 0; y < 450; y += 50)
  {
    for (int x = 0; x < 500; x+= 50)
    {
      Die mrchan = new Die(x, y);
      mrchan.show();
      sum = sum + mrchan.spots;
    }
  }
  fill(0);
  text("Total: " + sum, 225, 480);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY;
  int spots;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
      spots = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(163,12,245);
    stroke(188,94,240);
    rect(myX, myY, 50, 50, 20);

    if (spots == 1) {
      noStroke();
      fill(255);
      ellipse(myX+25, myY+25, 8, 8);
    }
    if (spots == 2) {
      noStroke();
      fill(255);
      ellipse(myX+15, myY+25, 8, 8);
      ellipse(myX+35, myY+25, 8, 8);
    }
    if (spots == 3) {
      noStroke();
      fill(255);
      ellipse(myX+15, myY+15, 8, 8);
      ellipse(myX+25, myY+25, 8, 8);
      ellipse(myX+35, myY+35, 8, 8);
    }
    if (spots == 4) {
      noStroke();
      fill(255);
      ellipse(myX+15, myY+15, 8, 8);
      ellipse(myX+15, myY+35, 8, 8);
      ellipse(myX+35, myY+15, 8, 8);
      ellipse(myX+35, myY+35, 8, 8);
    }
    if (spots == 5) {
      noStroke();
      fill(255);
      ellipse(myX+15, myY+15, 8, 8);
      ellipse(myX+15, myY+35, 8, 8);
      ellipse(myX+35, myY+15, 8, 8);
      ellipse(myX+35, myY+35, 8, 8);
      ellipse(myX+25, myY+25, 8, 8);
    }
    if (spots == 6) {
      noStroke();
      fill(255);
      ellipse(myX+15, myY+15, 8, 8);
      ellipse(myX+15, myY+35, 8, 8);
      ellipse(myX+15, myY+25, 8, 8);
      ellipse(myX+35, myY+15, 8, 8);
      ellipse(myX+35, myY+35, 8, 8);
      ellipse(myX+35, myY+25, 8, 8);
    }
  }
}
