
//**************************************************************************************************************************************************************************************************************

void drawToba(float x, float y) {
  // Leher
  fill(255, 228, 196); // warna kulit untuk leher
  beginShape(); 
    vertex(x - 15, y - 180); // Titik sudut pertama
    vertex(x + 15, y - 180); // Titik sudut kedua
    vertex(x + 15, y - 90);  // Titik sudut ketiga
    vertex(x - 15, y - 90);  // Titik sudut keempat
  endShape(CLOSE); // Menutup bentuk
  
  // Kepala
  fill(255, 228, 196); // warna kulit untuk kepala
  ellipse(x, y - 200, 150, 150); // kepala

  // Rambut
  fill(0, 0, 0); // Warna rambut coklat (RGB: 0, 0, 0)
  beginShape(); 
    vertex(x - 85, y - 190); // Titik awal
    bezierVertex(x - 75, y - 210, x - 38, y - 200, x - 10, y - 250); // Bezier curve 1
    bezierVertex(x - 10, y - 250, x + 40, y - 210, x + 85, y - 200); // Bezier curve 2
    bezierVertex(x + 100, y - 340, x - 100, y - 340, x - 85, y - 190); // Bezier curve 3
  endShape(CLOSE);

  // Tangan kanan
  fill(123);
  beginShape();
    vertex(x + 46, y - 100); // Titik awal lengan kanan
    bezierVertex(x + 100, y - 35, x + 120, y + 15, x + 125, y + 45); // Bezier curve 1
    bezierVertex(x + 128, y + 65, x + 110, y + 75, x + 62, y - 50); // Bezier curve 2
  endShape(CLOSE);

  // Tangan kiri
  fill(123); 
  beginShape();
    vertex(x - 46, y - 100); // Titik awal lengan kiri
    bezierVertex(x - 100, y - 35, x - 120, y + 15, x - 125, y + 45); // Bezier curve 1 
    bezierVertex(x - 128, y + 65, x - 110, y + 75, x - 62, y - 50); // Bezier curve 2 
  endShape(CLOSE);

  // Tangan Kanan
  fill(255, 228, 196); 
  ellipse(x + 120, y + 45, 30, 40); 
  
  // Tangan Kiri
  fill(255, 228, 196); 
  ellipse(x - 120, y + 45, 30, 40); 

  // Kaki
  fill(29, 104, 145); // Warna kulit untuk kaki
  beginShape(); 
    vertex(x + 40, y + 60); // Titik sudut pertama
    vertex(x + 40, y + 200); // Titik sudut kedua
    vertex(x + 20, y + 200);  // Titik sudut ketiga
    vertex(x, y + 100);  // Titik sudut keempat
    vertex(x - 20, y + 200); // Titik sudut kelima
    vertex(x - 40, y + 200); // Titik sudut keenam
    vertex(x - 40, y + 60); // Titik sudut ketujuh
  endShape(CLOSE); // Menutup bentuk
  
  // Alas Kaki
  ellipse(x + 45, y + 245, 55, 33);
  ellipse(x - 45, y + 245, 55, 33);
  
  // Badan Utama
  fill(29, 56, 145); // Warna badan utama
  rect(x - 60, y - 110, 120, 180, 40); // Badan utama
}

//**************************************************************************************************************************************************************************************************************

void wanita(float x, float y) {
  //rambut belakang
  noStroke();
  fill(0);
  bezier(x-70,y+15,x-50,y-120,x+50,y-120,x+70,y+15);
  
  //kepala
  noStroke();
  fill(#f0c8a5);
  ellipse(x,y,100,120);
  
  //rambut depan
  noStroke();
  fill(0);
  bezier(x-50,y-30,x-50,y-100,x+50,y-100,x+50,y-30);
  
  // Mata kiri
  fill(255);
  ellipse(x-25, y-10, 20, 10); // iris
  fill(0);
  ellipse(x-25, y-10, 10, 10);   // pupil

  // Mata kanan
  fill(255);
  ellipse(x+25, y-10, 20, 10); // iris
  fill(0);
  ellipse(x+25, y-10, 10, 10);   // pupil

  // Hidung
  stroke(0);
  strokeWeight(1);
  line(x, y, x+3, y+15);  
  line(x+3, y+15, x, y+15);  
  

  // Mulut
  noStroke();
  fill(255, 105, 180);
  bezier(x-15, y+30, x-10, y+40, x+10, y+40, x+15, y+30); // bibir bawah
  
  //leher
  noStroke();
  fill(#f0c8a5);
  rect(x-10,y+55,20,15);
  
   // tangan kanan
  noStroke();
  fill(#f0c8a5);
  beginShape();
    vertex(x+40,y+80);
    vertex(x+40,y+100);
    vertex(x+100,y+170);
    vertex(x+120,y+170);
  endShape(CLOSE);
  
  fill(0);
  ellipse(x+110,y+170,20,30);
  
  fill(#135D66);
  beginShape();
    vertex(x+55,y+95); // Titik awal lengan kiri
    bezierVertex(x+100,y+125,x+100,y+125,x+55,y+125); // Bezier curve 1 
  endShape(CLOSE);
  
  // tangan kiri
  noStroke();
  fill(#f0c8a5);
  beginShape();
    vertex(x-40,y+80);
    vertex(x-40,y+100);
    vertex(x-100,y+170);
    vertex(x-120,y+170);
  endShape(CLOSE);
  
  fill(0);
  ellipse(x-110,y+170,20,30);
  
  fill(#135D66);
  beginShape();
    vertex(x-50,y+95); // Titik awal lengan kiri
    bezierVertex(x-100,y+125,x-100,y+125,x-50,y+125); // Bezier curve 1 
  endShape(CLOSE);
  
  //badan
  noStroke();
  fill(#77B0AA);
  rect(x-60, y+70, 120, 180, 50);
  
  
  
  // kaki kiri
  fill(#f0c8a5);
  rect(x-40, y+245, 30, 80); // Kaki kiri
  
  // kaki kanan
  fill(#f0c8a5);
  rect(x+10, y+245, 30, 80); // Kaki kanan

  // sepatu kiri
  fill(0);
  ellipse(x-35, y+330, 60, 30); // Sepatu kiri
  
  // sepatu kanan
  fill(0);
  ellipse(x+35, y+330, 60, 30); // Sepatu kanan
  
  // rok
  fill(150, 0, 0); // Warna rok
  quad(x-60,y+200,x+60,y+200,x+50,y+300,x-50,y+300);
}

//**************************************************************************************************************************************************************************************************************

void drawAnakNormal(float x, float y) {
  
  // Leher
  fill(255, 228, 196); // warna kulit untuk leher
  beginShape(); 
    vertex(x - 15, y - 180); // Titik sudut pertama
    vertex(x + 15, y - 180); // Titik sudut kedua
    vertex(x + 15, y - 90);  // Titik sudut ketiga
    vertex(x - 15, y - 90);  // Titik sudut keempat
  endShape(CLOSE); // Menutup bentuk
  
  // Kepala
  fill(255, 228, 196); // warna kulit untuk kepala
  ellipse(x, y - 200, 150, 150); // kepala

  // Draw hair last
  fill(139, 69, 19); // Warna rambut coklat (RGB: 139, 69, 19)

    // Rambut
  beginShape(); 
    vertex(x - 85, y - 190); // Titik awal
    bezierVertex(x - 75, y - 210, x - 38, y - 200, x - 10, y - 250); // Bezier curve 1
    bezierVertex(x - 10, y - 250, x + 40, y - 210, x + 85, y - 200); // Bezier curve 2
    bezierVertex(x + 100, y - 340, x - 100, y - 340, x - 85, y - 190); // Bezier curve 3
  endShape(CLOSE);

  // Tangan kanan
  fill(255);
  beginShape();
    vertex(x + 46, y - 100); // Titik awal lengan kanan
    bezierVertex(x + 100, y - 35, x + 120, y + 15, x + 125, y + 45); // Bezier curve 1
    bezierVertex(x + 128, y + 65, x + 110, y + 75, x + 62, y - 50); // Bezier curve 2
  endShape(CLOSE);

  // Tangan kiri
  fill(255); 
  beginShape();
    vertex(x - 46, y - 100); // Titik awal lengan kiri
    bezierVertex(x - 100, y - 35, x - 120, y + 15, x - 125, y + 45); // Bezier curve 1 
    bezierVertex(x - 128, y + 65, x - 110, y + 75, x - 62, y - 50); // Bezier curve 2 
  endShape(CLOSE);

  // Tangan Kanan
  fill(255, 228, 196); 
  ellipse(x + 120, y + 45, 30, 40); 
  
  // Tangan Kiri
  fill(255, 228, 196); 
  ellipse(x - 120, y + 45, 30, 40); 

  // Kaki
  fill(255, 228, 196); // Warna kulit untuk kaki
  beginShape(); // kaki
    vertex(x + 40, y + 60); // Titik sudut pertama
    vertex(x + 40, y + 200); // Titik sudut kedua
    vertex(x + 20, y + 200);  // Titik sudut ketiga
    vertex(x, y + 100);  // Titik sudut keempat
    vertex(x - 20, y + 200); // Titik sudut kelima
    vertex(x - 40, y + 200); // Titik sudut keenam
    vertex(x - 40, y + 60); // Titik sudut ketujuh
  endShape(CLOSE); // Menutup bentuk
  
  // Alas Kaki
  ellipse(x + 45, y + 205, 55, 33);
  ellipse(x - 45, y + 205, 55, 33);
  
  // Badan Utama
  fill(139, 69, 19); 
  rect(x - 60, y - 110, 120, 180, 50);
}

//**************************************************************************************************************************************************************************************************************

void drawAnak(float x, float y) {
    fill(255, 228, 196); 
    beginShape(); 
      vertex(x - 15, y - 180); 
      vertex(x + 15, y - 180); 
      vertex(x + 15, y - 90);  
      vertex(x - 15, y - 90);  
    endShape(CLOSE); 

    fill(255, 228, 196); 
    ellipse(x, y - 200, 150, 150); 

    fill(139, 69, 19); 
    beginShape(); 
      vertex(x - 85, y - 190); 
      bezierVertex(x - 75, y - 210, x - 38, y - 200, x - 10, y - 250); 
      bezierVertex(x - 10, y - 250, x + 40, y - 210, x + 85, y - 200); 
      bezierVertex(x + 100, y - 340, x - 100, y - 340, x - 85, y - 190); 
    endShape(CLOSE);

    fill(255);
    beginShape();
      vertex(x + 46, y - 100); 
      bezierVertex(x + 100, y - 35, x + 120, y + 15, x + 125, y + 45); 
      bezierVertex(x + 128, y + 65, x + 110, y + 75, x + 62, y - 50); 
    endShape(CLOSE);

    fill(255); 
    beginShape();
      vertex(x - 46, y - 100); 
      bezierVertex(x - 110, y - 120, x - 180, y - 130, x - 205, y - 100); 
      bezierVertex(x - 208, y - 90, x - 190, y - 80, x - 30, y - 70); 
    endShape(CLOSE);

    fill(255, 228, 196); 
    ellipse(x + 120, y + 45, 30, 40); 

    fill(255, 228, 196); 
    ellipse(x - 205, y - 100, 30, 40); 

    fill(255, 228, 196); 
    beginShape(); 
      vertex(x + 40, y + 60); 
      vertex(x + 40, y + 200); 
      vertex(x + 20, y + 200);  
      vertex(x, y + 100);  
      vertex(x - 20, y + 200); 
      vertex(x - 40, y + 200); 
      vertex(x - 40, y + 60); 
    endShape(CLOSE); 

    ellipse(x + 45, y + 205, 55, 33);
    ellipse(x - 45, y + 205, 55, 33);
    
    fill(139, 69, 19); 
    rect(x - 60, y - 110, 120, 180, 50);
  
}
