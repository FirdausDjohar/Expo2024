// Scene anak berjalan menemui toba
int numAwan = 5;
float[] awanX = new float[numAwan];
float[] awanY = new float[numAwan];
float anakX; // posisi awal anak di ujung kanan
float anakY = 800; // posisi vertikal anak tetap sama
float anakSpeed = 5; // kecepatan gerak anak
float keranjangOffsetX = 1195; // posisi awal horizontal keranjang
boolean anakVisible = true; // menentukan apakah anak masih terlihat atau tidak

void scene6Setup() {
  // Inisialisasi posisi awan secara acak
  for (int i = 0; i < numAwan; i++){
    awanX[i] = random(width);
    awanY[i] = random(height * 0.5);
  }
  
  anakX = width; // posisi awal anak di ujung kanan layar
}

void scene6Draw() {
  background(187, 233, 255);
  
  // Gambar dan perbarui posisi awan
  for (int i = 0; i < numAwan; i++){
    awan(awanX[i], awanY[i]);
    awanX[i] += 2; // Geser awan ke kanan lebih cepat
    if (awanX[i] > width) {
      awanX[i] = 0; // Kembali ke kiri jika sudah melewati layar
    }
  }
  
  bg2(); // Gambar tanah dan pohon
  
  if (anakVisible) {
    drawAnak(anakX, anakY); // Gambar anak dengan posisi yang diatur
    drawKeranjang(anakX - 205, anakY + 15); // Gambar keranjang di dekat tangan anak
    anakX -= anakSpeed; // Geser anak ke kiri lebih cepat
    
    // Reset posisi anak jika sudah mencapai batas kiri layar
    if (anakX < -200) {
      anakVisible = false; // Set anak tidak terlihat setelah mencapai ujung kiri
    }
  }
}


//void awan(float x, float y){
//  fill(255); // Warna putih untuk awan
//  noStroke();
//  ellipse(x, y, 100, 60);
//  ellipse(x + 50, y, 120, 80);
//  ellipse(x + 100, y, 100, 60);
//}
