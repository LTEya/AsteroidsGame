class Star {
  int myX, myY;
  public Star() {
    myX = (int)(Math.random()*500);
    myY= (int)(Math.random()*500);
  }
  public void show() {
    int x = (int)(Math.random()*255);
    fill(x);
    ellipse (myX, myY, 3, 3);
  }
}
