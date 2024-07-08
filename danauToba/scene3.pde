// File scene3.pde
// Scene keranjang diatas meja dan toba pergi keluar

int scene3_anakX = 1400; // posisi awal anak
int scene3_anakY = 700;
int scene3_targetX = 1750; // posisi target anak saat mencapai pintu
int scene3_targetY = 750;
float scene3_anakSpeed = 2; // kecepatan gerak anak
boolean scene3_sudahSampai = false; // status sudah sampai pintu atau belum

void scene3() {
  background(255);
  drawRoom();
  drawTableAndChairs();
  drawPintu();
  drawKeranjang(1100, 560);
  
  // Anak bergerak ke arah pintu
  if (!scene3_sudahSampai) {
    moveAnakScene3();
  }
  
  // Gambar anak hanya jika belum mencapai pintu
  if (!scene3_sudahSampai) {
    drawToba(scene3_anakX, scene3_anakY); // Menggunakan fungsi drawToba untuk menggambar anak
  }
}

void moveAnakScene3() {
  // Hitung vektor arah menuju pintu
  float dx = scene3_targetX - scene3_anakX;
  float dy = scene3_targetY - scene3_anakY;
  float distance = sqrt(dx * dx + dy * dy);
  
  // Normalisasi vektor ke kecepatan anak
  float vx = dx / distance * scene3_anakSpeed;
  float vy = dy / distance * scene3_anakSpeed;
  
  // Perbarui posisi anak
  scene3_anakX += vx;
  scene3_anakY += vy;
  
  // Cek jika anak sudah sampai di pintu
  if (dist(scene3_anakX, scene3_anakY, scene3_targetX, scene3_targetY) < 10) {
    scene3_sudahSampai = true;
  }
}
