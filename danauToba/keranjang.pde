void drawKeranjang(float x, float y){
  noFill();
  stroke(10);
  bezier(
    x - 60, y,        // Titik awal gagang (sudut kiri atas)
    x - 60, y - 150,  // Titik kontrol pertama
    x + 60, y - 150,  // Titik kontrol kedua
    x + 60, y         // Titik akhir gagang (sudut kanan atas)
  );
  fill(248, 244, 225);
  beginShape();       
    vertex(x - 60, y); // Titik sudut pertama
    vertex(x + 60, y); // Titik sudut kedua
    vertex(x + 60, y + 80); // Titik sudut ketiga
    vertex(x - 60, y + 80); // Titik sudut keempat
  endShape(CLOSE);     // Menutup bentuk
  
  ellipse(x, y, 120, 30);
  bezier(
    x - 60, y + 80,  // Titik awal bezier (sudut kiri bawah)
    x - 60, y + 110,  // Titik kontrol pertama
    x + 60, y + 110,  // Titik kontrol kedua
    x + 60, y + 80   // Titik akhir bezier (sudut kanan bawah)
  ); 
}
