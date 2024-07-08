
//**************************************************************************************************************************************************************************************************************

void drawRoom() {
  stroke(5);
  // Gambar dinding atas
  fill(255);
  beginShape();       
    vertex(0, 0); 
    vertex(400, 200); 
    vertex(width, 200); 
    vertex(width, 0); 
  endShape(CLOSE);     

  // Gambar dinding kiri
  fill(248, 244, 225);
  beginShape();       
    vertex(0, 0); 
    vertex(400, 200); 
    vertex(400, 800); 
    vertex(0, height); 
  endShape(CLOSE);     

  // Gambar dinding tengah
  fill(252, 248, 243);
  beginShape();       
    vertex(400, 200); 
    vertex(width, 200); 
    vertex(width, 800); 
    vertex(400, 800); 
  endShape(CLOSE);     

  // Gambar dinding bawah
  fill(151, 49, 49);
  beginShape();       
    vertex(0, height); 
    vertex(400, 800); 
    vertex(width, 800); 
    vertex(width, height); 
  endShape(CLOSE);     
}

//**************************************************************************************************************************************************************************************************************

void drawTableAndChairs() {
  stroke(0);
  fill(255);
  
  // Gambar meja
  fill(175, 143, 111);
  rect(830, 680, 10, 200, 10); // kaki kiri
  rect(1160, 680, 10, 200, 10); // kaki kanan
  rect(900, 695, 10, 150, 10); // kaki tengah kiri
  rect(1100, 695, 10, 150, 10); // kaki tengah kanan
  fill(0);
  ellipse(1000, 660, 400, 100);
  fill(175, 143, 111);
  ellipse(1000, 650, 400, 100);
  
  // Gambar kursi kiri
  fill(175, 143, 111);
  rect(650, 800, 10, 120, 10); // kaki kiri
  rect(740, 800, 10, 120, 10); // kaki tengah kanan
  rect(790, 730, 10, 120, 10); // kaki kanan
  rect(700, 800, 10, 50, 10); // kaki tengah kiri
  
  fill(0);
  beginShape();       
    vertex(650, 800); 
    vertex(750, 800); 
    vertex(750, 808); 
    vertex(650, 808); 
  endShape(CLOSE);     
  
  beginShape();       
    vertex(750, 800); 
    vertex(800, 730); 
    vertex(800, 738); 
    vertex(750, 808); 
  endShape(CLOSE);     
  
  fill(175, 143, 111);
  beginShape();       
    vertex(700, 730); 
    vertex(800, 730); 
    vertex(750, 800); 
    vertex(650, 800); 
  endShape(CLOSE);     
 
  fill(175, 143, 111);
  beginShape();       
    vertex(700, 730); 
    vertex(650, 800); 
    vertex(585, 600); 
    vertex(650, 550); 
  endShape(CLOSE);     
}

//**************************************************************************************************************************************************************************************************************

void drawPintu(){
  fill(116, 81, 45);
  beginShape();       
    vertex(1850, 800); 
    vertex(1850, 350); 
    vertex(1630, 350); 
    vertex(1630, 800); 
  endShape(CLOSE);     
  
  fill(255);
  ellipse(1650, 595, 17, 17);
}
