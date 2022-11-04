Q [] q = new Q [200];

void setup(){
  size(500, 500);
  for(int i = 0; i < q.length/2; i = i + 1)
    q[i] = new Q((float)(Math.random()));
  for(int i = q.length/2; i < q.length; i = i + 1)
    q[i] = new M((float)(Math.random()));
}

class Q{
  float rotation, size;
  float x, y;
  color Color;
 
  Q(float a){
    rotation = a;
    size = 20;
    x = 0;
    y = 0;
    Color = color((int)(Math.random()*256));
  }
   
  void show(){
    rotation = rotation + (float)(Math.random()*PI/16);
    x = x + (10*cos(rotation));
    y = y + (10*sin(rotation));
    if(x > 260)
      x = x - (10*sin(rotation));
    if(x < -260)
      x = x + (10*cos(rotation));
    if(y > 260)
      y = y - (10*sin(rotation));
    if(y < -260)
      y = y + (10*cos(rotation));
    fill(Color, (int)(Math.random()*256));
    noStroke();
    ellipse(x, y, size ,size);
  }
}

class M extends Q{
    M(float b){
      super(1);
      rotation = b;
      size = 20;
      x = 0;
      y = 0;
      Color = color((int)(Math.random()*55 + 200),(int)(Math.random()*55 + 185), (int)(Math.random()*55 + 30));      //255, 215, 0);
    }
   
    void show(){
      rotation = rotation + (float)(Math.random()*PI/16);
      x = x + (10*sin(rotation));
      y = y + (10*cos(rotation));
        if(x > 260)
      x = x - (10*cos(rotation));
        if(x < -260)
      x = x + (10*sin(rotation));
        if(y > 260)
      y = y - (10*cos(rotation));
        if(y < -260)
      y = y + (10*sin(rotation));
      fill(Color, (int)(Math.random()*256));
      noStroke();
      ellipse(x, y, size ,size);
    }
  }
 
void draw(){
  float xx = 250;
  xx = xx + (mouseX - pmouseX);
  float yy = 250;
  yy = yy + (mouseY - pmouseY);
  translate(xx, yy);
  color Color1 = color (xx, yy, xx, yy);
  background(Color1);
  for(int i = 0; i < q.length/2; i = i + 1){
    q[i].show();
  }
  for(int i = q.length/2; i < q.length; i = i + 1){
    q[i].show();
  }
} 
