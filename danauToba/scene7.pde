// Scene anak bertemu dengan toba
int scene7_numAwan = 5;
float[] scene7_awanX = new float[scene7_numAwan];
float[] scene7_awanY = new float[scene7_numAwan];

void scene7Setup() {
  // Inisialisasi posisi awan secara acak
  for (int i = 0; i < scene7_numAwan; i++){
    scene7_awanX[i] = random(width);
    scene7_awanY[i] = random(300); // Batasi posisi awanY maksimal 300
  }
}


void scene7Draw() {
  background(0, 188, 255); // awan biru
  fill(33, 173, 1); // rumput
  rect(0, 400, 1920, 700);

  fill(251, 255, 0); // matahari
  ellipse(0, 0, 250, 250);

  // tembok
  fill(150, 101, 36);
  stroke(1);
  quad(20 + 40, 200 + 250, 300 + 100, 100 + 350, 300 + 100, 300 + 350, 20 + 40, 300 + 350);

  // atap
  fill(214, 136, 33);
  triangle(10 + 10, 200 + 250, 350 + 100, 200 + 250, 150 + 90, 100 + 100);

  strokeWeight(5);

  // pintu
  fill(113, 67, 20);
  stroke(0, 0, 0);
  rect(200 + 100, 247 + 250, 80, 150);
  noStroke();

  fill(255, 105, 12);
  ellipse(310, 425, 10, 10);

  fill(107, 74, 8);
  rect(550, 330, 15, 80);

  fill(22, 92, 17);
  ellipse(557.5, 330, 70, 70);

  fill(107, 74, 8);
  rect(700, 330, 15, 80);

  fill(22, 92, 17);
  triangle(707.5, 300, 665, 340, 750, 340);
  triangle(707.5, 265, 670, 300, 745, 300);
  triangle(707.5, 240, 680, 265, 735, 265);

  ellipse(557.5, 290, 55, 55);

  drawAnakNormal(1300, 700); // Gambar anak di posisi tertentu
  drawToba(800, 700); // Gambar toba di posisi tertentu

  for (int i = 0; i < scene7_numAwan; i++){
    awan(scene7_awanX[i], scene7_awanY[i]);
    scene7_awanX[i] += 2; // Geser awan ke kanan lebih cepat
    if (scene7_awanX[i] > width) {
      scene7_awanX[i] = 0; // Kembali ke kiri jika sudah melewati layar
    }
  }
}
