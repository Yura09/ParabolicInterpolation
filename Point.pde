class Point
{
  public float x;
  public float y;
  public float z;

  public Point()
  {
    x= 50;
    y = 50;
    z = 0;
  }
  public Point(float x_, float y_, float z_)
  {
    x = x_;
    y = y_;
    z = z_;
  }
  public float getX()
  {
    return x;
  }
  public float getY()
  {
    return y;
  }
  public void setX(float x_)
  {
    x = x_;
  }
  public void setY(float y_)
  {
    y= y_;
  }
  public float getZ()
  {
    return z;
  }
  public void setZ(float z_)
  {
    z= z_;
  }
  public void drawMyPoint()
  {
    strokeWeight(4);
    //stroke(255,0,0); // red
    point(x, y, z);
    stroke(1);
  }
}
