class Asteriod extends Floater {
  public double rotSpeed;
  public Asteriod(){
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11,-5,};
    yCorners = new int[] {-8,-8,0,10,8,0};
    myColor = color(153,168,176);
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    myXspeed = myYspeed = Math.random()*2*PI;
    myPointDirection = Math.random()*2*PI;
    rotSpeed = Math.random()*2*PI;
  }
   public void move(){
     turn(rotSpeed);
     super.move(); 
   }
   public double getXatd(){
     return myCenterX;
   }
   public double getYatd(){
     return myCenterY;
   }
}
