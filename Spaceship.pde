class Spaceship extends Floater {

  public Spaceship() {
    fill(23, 23, 122);
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = 255;
    myCenterX = myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void hyperspace() {
    myXspeed = (int)Math.random()*10;
    myYspeed = (int)Math.random()*10;
  }
  public double getXshp(){
    return myCenterX;
  }
  public double getYshp(){
    return myCenterY;
  }
}
