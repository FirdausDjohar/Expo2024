// Scene wanita menyuruh anak mengantar makan

int scene5_anakX = 1400; // posisi awal anak
int scene5_anakY = 800;
int scene5_targetX = 1630; // posisi target anak saat mencapai pintu
int scene5_targetY = 800;
float scene5_anakSpeed = 2; // kecepatan gerak anak
boolean scene5_sudahSampai = false; // status sudah sampai pintu atau belum
boolean scene5_gambarKeranjang = true; // status untuk menentukan apakah keranjang digambar atau tidak
int scene5_delayStartTime; // waktu mulai delay
int scene5_delayDuration = 3000; // delay selama 3 detik

void scene5() {
  background(255);
  drawRoom();
  drawTableAndChairs();
  drawPintu();
  wanita(700, 700);
  
  // Delay sebelum anak mulai bergerak
  if (scene5_delayStartTime == 0) {
    scene5_delayStartTime = millis(); // set waktu mulai delay saat pertama kali masuk scene
  }
  
  if (millis() - scene5_delayStartTime > scene5_delayDuration) {
    if (!scene5_sudahSampai) {
      moveAnakScene5();
    }
  }
  
  // Gambar anak hanya jika belum mencapai pintu
  if (!scene5_sudahSampai) {
    drawAnak(scene5_anakX, scene5_anakY);
  }
  
  // Gambar keranjang hanya jika belum mencapai pintu
  if (!scene5_sudahSampai && scene5_gambarKeranjang) {
    drawKeranjang(scene5_anakX - 210, scene5_anakY + 10);
  }
}

void moveAnakScene5() {
  // Hitung vektor arah menuju pintu
  float dx = scene5_targetX - scene5_anakX;
  float dy = scene5_targetY - scene5_anakY;
  float distance = sqrt(dx * dx + dy * dy);
  
  // Normalisasi vektor ke kecepatan anak
  float vx = dx / distance * scene5_anakSpeed;
  float vy = dy / distance * scene5_anakSpeed;
  
  // Perbarui posisi anak
  scene5_anakX += vx;
  scene5_anakY += vy;
  
  // Cek jika anak sudah sampai di pintu
  if (dist(scene5_anakX, scene5_anakY, scene5_targetX, scene5_targetY) < 10) {
    scene5_sudahSampai = true;
    scene5_gambarKeranjang = false; // setelah sampai di pintu, tidak perlu lagi gambar keranjang
  }
}
