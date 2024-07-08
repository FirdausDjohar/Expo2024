int scene2_numAwan = 5;
float[] scene2_awanX = new float[scene2_numAwan];
float[] scene2_awanY = new float[scene2_numAwan];
float scene2_anakX; // posisi awal anak di ujung kiri
float scene2_anakY = 800; // posisi vertikal anak tetap sama
float scene2_anakSpeed = 5; // kecepatan gerak anak
float scene2_keranjangOffsetX = 1195; // posisi awal horizontal keranjang
boolean scene2_anakVisible = true; // menentukan apakah anak masih terlihat atau tidak

void scene2Setup() {
  // Inisialisasi posisi awan secara acak
  for (int i = 0; i < scene2_numAwan; i++){
    scene2_awanX[i] = random(width);
    scene2_awanY[i] = random(height * 0.5);
  }
  
  scene2_anakX = -200; // posisi awal anak di ujung kiri layar
}

void scene2Draw() {
  background(187, 233, 255);
  
  // Gambar dan perbarui posisi awan
  for (int i = 0; i < scene2_numAwan; i++){
    awan(scene2_awanX[i], scene2_awanY[i]);
    scene2_awanX[i] -= 2; // Geser awan ke kiri
    if (scene2_awanX[i] < 0) {
      scene2_awanX[i] = width; // Kembali ke kanan jika sudah melewati layar
    }
  }
  
  bg2(); // Gambar tanah dan pohon
  
  if (scene2_anakVisible) {
    drawToba(scene2_anakX, scene2_anakY); // Gambar anak dengan posisi yang diatur
    drawKeranjang(scene2_anakX + 135, scene2_anakY + 145); // Gambar keranjang di dekat tangan anak
    scene2_anakX += scene2_anakSpeed; // Geser anak ke kanan lebih cepat
    
    // Reset posisi anak jika sudah mencapai batas kanan layar
    if (scene2_anakX > width) {
      scene2_anakVisible = false; // Set anak tidak terlihat setelah mencapai ujung kanan
    }
  }
}
