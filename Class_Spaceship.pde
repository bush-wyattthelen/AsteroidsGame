public class Spaceship extends Floater {
  Spaceship(double myCenterX, double myCenterY, double myXspeed, double myYspeed, double myPointDirection) {
    this.corners = 4;
    this.xCorners = new int[]{-8, -4, -8, 8};
    this.yCorners = new int[]{-8, 0, 8, 0};
    this.myColor = 255;
    this.myCenterX = myCenterX;
    this.myCenterY = myCenterY;
    this.myXspeed = myXspeed;
    this.myYspeed = myYspeed;
    this.myPointDirection = myPointDirection;
  }
}
