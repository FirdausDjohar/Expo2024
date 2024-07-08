void scene1(){
  background(187, 233, 255);
  awan();
  gunungjauh();
  gunung();
  tanah();
  sungai();
  pohon();
              
  drawToba(-25,850);
  pancingan();
}

void sungaibg1(){
  fill(#3DC2EC);
  stroke(0);
  beginShape();
    bezier(0,1080,500,600,1920,400,2000,1080);
  endShape(CLOSE);
}

void tanahbg1(){
  fill(#06D001);
  beginShape();
    stroke(0);
    rect(0,500,width,height);
  endShape();
}

void gunungbg1(){
  fill(#597445);
  //gunung1
  beginShape();
    bezier(0,500,300,350,350,200,1000,500);
  endShape(CLOSE);
   //gunung2
  beginShape();
    bezier(1000,500,1300,350,1350,200,2000,500);
  endShape(CLOSE);
}
void gunungjauhbg1(){
  fill(#658147);
  //gunung1
  beginShape();
    bezier(-100,500,200,300,350,300,500,500);
  endShape(CLOSE);
   //gunung2
  beginShape();
    bezier(800,500,1000,400,1050,400,1200,500);
  endShape(CLOSE);
  //gunung3
  beginShape();
    bezier(1700,500,1800,400,1850,350,2100,500);
  endShape(CLOSE);
}
void pohonbg1(){
  //pohon
  fill(125,71,42);
  for(int i = -5; i <= 1920; i += 125){
    rect(i,300,35,300);
  }
  
  fill(52,112,50);
  for(int j = 0; j<=50; j += 10){
    for(int i = 0; i <= 1920; i+=125){
      triangle(15+i, 210+j, 60+i, 400+j, -30+i, 400+j);
    }
  }
}
void  awanbg1() {
  fill(255); // Warna putih untuk awan
  noStroke();
  // Awan 1
  ellipse(width * 0.2, height * 0.2, 100, 60);
  ellipse(width * 0.25, height * 0.2, 120, 80);
  ellipse(width * 0.3, height * 0.2, 100, 60);
  // Awan 2
  ellipse(width * 0.7, height * 0.15, 120, 80);
  ellipse(width * 0.75, height * 0.15, 140, 100);
  ellipse(width * 0.8, height * 0.15, 120, 80);
}

void pancingan() {
  // Fungsi untuk menambahkan elemen pancingan
  strokeWeight(10);
  line(100,900,300,700);
  
  fill(255,0,0);
  strokeWeight(1);
  ellipse(120, 880, 20, 20);  // Contoh pancingan (lingkaran merah di tengah layar)
  
  strokeWeight(3);
  line(290,710,600,1000);
  
  fill(255, 0, 0);  // Misalnya, warna merah
  strokeWeight(1);
  ellipse(600, 1000, 50, 50);  // Contoh pancingan (lingkaran merah di tengah layar)
}
