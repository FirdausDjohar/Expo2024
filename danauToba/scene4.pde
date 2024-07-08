// Scene4
// Scene Toba masuk ke rumah dan melihat wanita 
int scene4_tobaX = 1920; // posisi awal anak di ujung kanan layar
int scene4_tobaY = 800;
int scene4_targetX = 1400; // posisi target anak (dekat meja)
int scene4_targetY = 800;
float scene4_tobaSpeed = 2; // kecepatan gerak anak
boolean scene4_sudahSampai = false; // status sudah sampai target atau belum

void scene4() {
  background(255);
  drawRoom();
  drawTableAndChairs();
  drawPintu();
  wanita(600,700);
  
  // Anak bergerak menuju meja
  if (!scene4_sudahSampai) {
    scene4_moveToba();
  }
  
  // Gambar anak selalu
  drawToba(scene4_tobaX, scene4_tobaY);
}

void scene4_moveToba() {
  // Hitung vektor arah menuju target
  float dx = scene4_targetX - scene4_tobaX;
  float dy = scene4_targetY - scene4_tobaY;
  float distance = sqrt(dx * dx + dy * dy);
  
  // Normalisasi vektor ke kecepatan anak
  float vx = dx / distance * scene4_tobaSpeed;
  float vy = dy / distance * scene4_tobaSpeed;
  
  // Perbarui posisi anak
  scene4_tobaX += vx;
  scene4_tobaY += vy;
  
  // Cek jika anak sudah sampai di target
  if (dist(scene4_tobaX, scene4_tobaY, scene4_targetX, scene4_targetY) < 10) {
    scene4_sudahSampai = true;
  }
}
