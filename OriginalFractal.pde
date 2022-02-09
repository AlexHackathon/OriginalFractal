int c;
float rot;
float rad;
boolean zoom;
void setup(){
  c = color(0,0,0);
  size(500,500);
  background(255);
  rot = 0;
  rad = 1;
  zoom = true;
  //translate(250,250);
  //stroke(0,0,0);
  //fill(0,0,0);
  //myFractal(0);
}
void draw(){
  translate(250,250);
  c = color(0,0,0);
  rot += .01;
  //rad += .01;
  if(rad >= 10){
    zoom = false;
  }
  if(rad <= 1){
    zoom = true;
  }
  if(zoom){
    rad += 0.01;
  } else {
    rad -= 0.01;
  }
  rotate(rot);
  background(255);
  stroke(0,0,0);
  myFractal(0,rad);
}
void myFractal(float t, float r){
  c++;
  fill(c);
  ellipse(spiralX(t,r),spiralY(t,r),t/2,t/2);
  if(t >= 600){
    return;
  } else {
    myFractal(t + 1, r);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
  }
}
float spiralX(float t, float r){
  return cos(t) - r*t*sin(t);
}
float spiralY(float t, float r){
  return sin(t) - r*t*cos(t);
}
