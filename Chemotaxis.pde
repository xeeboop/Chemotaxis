Walker [] meow;
void setup(){
  size(500,500); 
  meow = new Walker[50];
  for (int i = 0; i < meow.length; i++){
    meow[i] = new Walker();
  }
}
void draw(){
  background(0);
   ellipse(250,250,100,100);
  for (int i =0; i < meow.length; i++){
    meow[i].show();
    meow[i].walk();
  }
}
class Walker{
  int myColor, x, y, z, w;
  Walker(){
    myColor=color((int)(Math.random()*251),(int)(Math.random()*251),(int)(Math.random()*251));
    x = (int)(Math.random()*200)+100;
    y = 250;
    z = (int)(Math.random()*30);
    w = (int)(Math.random()*300);
  }
  void walk(){
  frameRate(3);
    if (w > x){
     x= 150 + (int)(Math.random()*250);
    }
    else{
     x = 350 - (int)(Math.random()*250);
    }
  }
  void show(){
    stroke(myColor);
    fill(myColor);
    ellipse(x,y,z,z);
  } 
}
