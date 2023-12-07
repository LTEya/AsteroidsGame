Spaceship bob;
Star[] nightSky= new Star[200];

public void setup() {
  size(500, 500);
  bob = new Spaceship();
  for (int i=0; i<nightSky.length; i++)
    nightSky[i] = new Star();
}

public void draw() {
  background(0);
  bob.show();
  for (int i=0; i<nightSky.length; i++)
    nightSky[i].show();
}

public void keyPressed() {
  if (key == 'h')
    bob.hyperspace();
  if (key == 'e')
    bob.turn(45);
  if (key == 'q')
    bob.turn(-45);
  if (key == 'w')
    bob.accelerate(5);
    bob.move();
}
