//estamos trabajando para usted

int x = 200; int y = 157; int sz = 48;
float r = random(10, 40);
float reloj=0;
color frac = color(64, 48, 56);
color sombrasnadamas = color(47, 32, 39);
color camisa = color(247, 239, 236);
color corbatier = color(180, 5, 18);
color carita = color(235, 185, 152);
color sombritadecarita = color(218, 160, 112);
boolean costume = false;
PShape son; PShape boton; PShape sailor;
PImage memoria;

void setup() {
  size(400, 400);
  son  = loadShape("son.svg");
  boton=loadShape("reloj.svg");
  sailor=loadShape("sailor.svg");
  memoria =loadImage("memoria.png");} 

void draw() {
background(206, 224, 226); 

fill(255);
  stroke(#d75d34);strokeWeight(1.5);
  rect(338, 50, 25, 25);rect(338, 93, 25, 25);rect(30, 50, 25, 25);
  textSize(17);fill(0); text("?", 347, 70); text("?", 347, 112);shape(boton, 15, 50, 17, 17);

  stroke(206, 224, 226);
  strokeWeight(0.3);

  if (dist(x, y, mouseX, mouseY) < sz) { //fondo kmazu cuando clickeas
    if (mousePressed) {background(20, mouseY, mouseX);stroke(20, mouseY, mouseX);}}

  if (mouseX>=338 && mouseX<=363 && mouseY>=50 && mouseY<=75)
  {background(random(0, 255), random(0, 255), random(0, 255));}

  if (mouseX>=338 && mouseX<=363 && mouseY>=93 && mouseY<=118) 
  {background(#293863);fill(#e4f0ff);ellipse(200, 157, 311, 311);}

  shape(son, 0, 0, 400, 400);

fill(frac);
  triangle(90, 239, 120, 400, 74, 400);triangle(120, 302, 165, 400, 120, 400);
  triangle(90, 239, 143, 218, 165, 400);triangle(145, 240, 200, 313, 165, 400); 
  triangle(200, 313, 165, 400, 200, 400);triangle(279, 400, 325, 400, 309, 239);
  triangle(200, 313, 234, 400, 200, 400);triangle(234, 400, 200, 313, 254, 240);
  triangle(256, 218, 309, 239, 234, 400);triangle(234, 400, 279, 400, 279, 302);
  
fill(sombrasnadamas);
  triangle(143, 218, 156, 209, 145, 240);triangle(156, 209, 175, 229, 145, 240); 
  triangle(156, 209, 170, 187, 175, 229);triangle(145, 240, 175, 229, 200, 313);
  triangle(90, 239, 120, 302, 120, 400);triangle(279, 302, 309, 239, 279, 400);
  triangle(228, 187, 243, 209, 223, 229);triangle(223, 229, 243, 209, 254, 240);
  triangle(254, 240, 256, 218, 243, 209);triangle(254, 240, 223, 229, 200, 313);
  
fill(camisa);
  triangle(170, 187, 196, 214, 175, 229);triangle(175, 229, 196, 214, 189, 234);
  triangle(189, 234, 192, 225, 196, 236);triangle(196, 236, 187, 269, 175, 229);
  triangle(229, 187, 203, 214, 223, 229);triangle(223, 229, 203, 214, 210, 234);
  triangle(210, 234, 207, 225, 203, 236);triangle(203, 236, 223, 228, 212, 269);
  
fill(corbatier);
  strokeWeight(1);
beginShape();
  vertex(196, 214);vertex(203, 214);vertex(207, 225);
  vertex(203, 236);vertex(196, 236);vertex(192, 225);
endShape();
beginShape();
  vertex(196, 236);vertex(203, 236);vertex(212, 269);
  vertex(200, 313);vertex(187, 269);
endShape();

  //HACER CLICK PARA DEVOLVER LA MANZANA
  if (keyPressed) {
    x=200;y=157;
    fill(95, 108, 36);  arc(x, y, sz-3, sz-3, radians(-90), radians(270));
    fill(139, 148, 19); arc(x, y, sz-3, sz-3, radians(90), radians(270));  }

  if (mouseX>=338 && mouseX<=363 && mouseY>=50 && mouseY<=75) {
    costume=true; 
  shape(sailor, 0, 0, 400, 400);
   } else {
    frac = color(64, 48, 56);
    corbatier = color(180, 5, 18);
    camisa = color(247, 239, 236);
    sombrasnadamas = color(47, 32, 39);
    costume=false;}

  if (mouseX>=338 && mouseX<=363 && mouseY>=93 && mouseY<=118) {
    frac=corbatier; camisa=corbatier; sombrasnadamas=corbatier;
fill(255);noStroke();ellipseMode(CORNER);
    ellipse(111, 212, 176, 177); rect(111, 301, 175, 99);
fill(#a18b62);
    ellipse(160, 307, 75, 44); rect(188, 342, 23, 28, 25);
    rect(117, 250, 162, 77, 50);
strokeWeight(2);stroke(#665333);
    arc(176, 263, 44, 83, radians(180), radians(360));
    arc(175, 315, 47, 14, radians(30), radians(150));
    ellipse(127, 263, 45, 45); ellipse(225, 263, 45, 45);
fill(255);
    ellipse(138, 274, 23, 23); ellipse(235, 274, 23, 23);
noStroke();fill(#665333);
    ellipse(190, 289, 7, 5); ellipse(200, 289, 7, 5);
fill(#2278c3);
    ellipse(random(140, 145), random(276, 279), 14, 14);
    ellipse(random(237, 242), random(276, 279), 14, 14);
    ellipseMode(CENTER);
  }

  if (dist(x, y, mouseX, mouseY) < sz*2) {
    cursor(HAND); //ratón to manito
    if (mousePressed) {
      x = mouseX; y = mouseY;
    } else {strokeWeight(2);
    }stroke(255);
  } else {
    cursor(ARROW);
    noStroke();}      
  fill(95, 108, 36);  arc(x, y, sz, sz, radians(-90), radians(270));
  fill(139, 148, 19); arc(x, y, sz, sz, radians(90), radians(270));

  if (mouseX>=30 && mouseX<=55 && mouseY>=50 && mouseY<=75) {
    image(memoria, 0, 0, 400, 410);
    tint(199, 177, 156, 250);
    shape(son, 0, 0, 400, 400);
    for (int y=30; y<reloj+40; y++) {
      frameRate(15);
   fill(#d75d34);
      ellipse(200, y+118, 48, y);
   fill(#e8ebfa);
      ellipse(200, y+118, 38, y-10);
   fill(0);
      ellipse(200, y+118, 1, y-30);ellipse(200, y+118, 5, 5);
if (reloj>200) 
      {reloj=10;}
    } reloj+=3;}}

void mouseDragged() {  
  if (dist(x, y, mouseX, mouseY) < sz*2) {
frameRate(50);noStroke();
fill(#ea5c7e);
    ellipse(224, 159, 25, 18); ellipse(175, 159, 25, 18);     
fill(carita);
    strokeWeight(0.5);stroke(20, mouseY, mouseX);
    triangle(90, 239, 120, 400, 74, 400);triangle(279, 400, 325, 400, 309, 239);
    triangle(200, 239, 279, 302, 120, 302);triangle(200, 239, 90, 239, 120, 302);
    triangle(200, 239, 90, 239, 143, 218);triangle(200, 239, 308, 239, 279, 302);
    triangle(200, 239, 156, 209, 143, 218);triangle(200, 239, 156, 209, 200, 214);
    triangle(196, 214, 156, 209, 170, 187);triangle(200, 239, 256, 218, 308, 239);
    triangle(200, 239, 308, 239, 278, 302);rect(120, 303, 159, 97);
fill(sombritadecarita);
    triangle(229, 187, 203, 213, 243, 209);triangle(200, 239, 200, 214, 243, 209);
    triangle(200, 239, 243, 209, 256, 218);triangle(90, 239, 120, 302, 120, 400);
    triangle(279, 302, 309, 239, 279, 400);
fill(30, mouseY-50, mouseX-50);
    rect(182, 320, 34, 13);
    triangle(120, 299, 120, 329, 142, 339); triangle(278, 299, 278, 329, 256, 339);
    quad(133, 222, 139, 219, 137, 280, 131, 276); quad(259, 219, 264, 222, 266, 276, 260, 280);  
fill(20, mouseY, mouseX);
    arc(158, 303, 80, 78, radians(30), radians(225), OPEN);
    arc(240, 303, 80, 78, radians(-45), radians(152), OPEN);

if (dist(x, y, mouseX, mouseY) < sz*2) {
      if (mousePressed) {x = mouseX;y = mouseY;
      } else {
      cursor(ARROW);noStroke();}
      fill(95, 108, 36); arc(x, y, sz-3, sz-3, radians(-90), radians(270));
      fill(139, 148, 19); arc(x, y, sz-3, sz-3, radians(90), radians(270));
}}}