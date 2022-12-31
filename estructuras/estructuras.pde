Caminante[] lau;
int cantLau=200;

void setup(){
  size(500,500);
  colorMode(HSB);
  noStroke();
  
  lau= new Caminante[cantLau];
  
  for(int numC=0; numC<cantLau; numC++){
  
  PVector pos=new PVector(width/2, height/2);
  lau[numC]=new Caminante(pos);
  }
  
  background(0);
  
}
void draw(){
  
  
  for(int numC=0; numC<cantLau; numC++){
  
  lau[numC].mover();

  lau[numC].mostrar();
  }
  //saveFrame("frames-####.jpg");
  
}


class Caminante{
PVector pos;
PVector vel= PVector.random2D();
color tono=color(random(255),255,255);

Caminante(PVector P_pos){
pos=P_pos;
vel.mult(5);
}

void mover(){
pos.add(vel);
chocar();
}

void mostrar(){
  fill(tono);
  ellipse(pos.x,pos.y,35,35);
}
void chocar(){
  
  if(pos.x < 0 || pos.x > width) vel.x*=-1;
  if(pos.y < 0 || pos.y > height) vel.y*=-1;
}


}
