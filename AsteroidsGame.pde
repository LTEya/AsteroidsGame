Spaceship bob;
Star[] nightSky= new Star[200];
Asteriod astrd;
ArrayList <Asteriod> ast = new ArrayList <Asteriod>();

public void setup() {
  size(500, 500);
  bob = new Spaceship();
  astrd = new Asteriod();
  for (int i=0; i < nightSky.length; i++)
    nightSky[i] = new Star();
  int astNum = 10;  
  for (int i=0; i<astNum;i++)
    ast.add(new Asteriod()); //ask
}

public void draw() {
  background(0);
  bob.show();
  for (int i=0; i<nightSky.length; i++)
    nightSky[i].show();
  for (int i=0; i< ast.size(); i++) {
    ast.get(i).move();
    ast.get(i).show();
    float d = dist((float)bob.getXshp(), (float)bob.getYshp(), (float)ast.get(i).getXatd(), (float)ast.get(i).getYatd());
   if (d<10)
     ast.remove(i);
  }

}

public void keyPressed() {
  if (key == 'h')
    bob.hyperspace();
  if (key == 'e')
    bob.turn(45);
  if (key == 'q')
    bob.turn(-45);
  if (key == 'w') {
    bob.accelerate(5);
    bob.move();
  }
}

