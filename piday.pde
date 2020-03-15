PGraphics pg; //<>//

ArrayList<PVector> points = new ArrayList<PVector>();

int w = 480;
int h = 480;
float right =0;
int total = 0;

public void setup() {

  size(600, 600);
  background(60);

  pg = createGraphics(600, 600);
  delay(5000);
}

public void draw() {
  for (int i=0; i<35; i++) {  
    //background(90);

    rectMode(CENTER);
    noFill();
    stroke(255);
    strokeWeight(2);

    push();

    translate(width/2-w/2, height/2-h/2);
    strokeWeight(3);

    PVector p = new PVector(random(0, w), random(0, h));


    if (dist(p.x, p.y, w/2, h/2)<h/2) {
      stroke(#16F261);
      right++;
    } else {
      stroke(#F50C1C);
    }
    total ++;
    point(p.x, p.y);


    pop();
    rect(width/2, height/2, w, h);

    ellipse(width/2, height/2, w, h);

    String txt = Float.toString(4*(right/total));


    pg.beginDraw();
    pg.textSize(38);
    pg.fill(60);
    pg.background(255, 0);
    pg.noStroke();
    pg.rect(0, 0, 300, 55);
    pg.fill(250);
    pg.text(txt, 50, 50);
    pg.endDraw();
    image(pg, 0, 0);
  }
}
