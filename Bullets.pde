class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getXshp();
    myCenterY = theShip.getYshp();
    myXspeed = theShip.getXspd();
    myYspeed = theShip.getYspd();
    myPointDirection = theShip.getPD();
    accelerate(5);
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
}
