final int SAMPLE_RATE = 44100;

SineOscillator sine;

void setup(){
  size(600,600);
  sine = new SineOscillator(440f,15f);
}

void draw(){
 
   background(0);
  noFill();
  beginShape();
  for(int i=0;i<width;i++){
      stroke(255);
      vertex(i,(height/2+sine.process()));
  }
  endShape();
  
  // line(0,height/2,width,height/2);
  //stroke(255);
  // strokeWeight(1);
  
   
  
}
