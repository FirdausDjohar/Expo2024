// Scene wanita melompat ke air

int frameCount = 0;
float wanitaX = 450;
float wanitaY = 420;
float airLevel = 550;
boolean isJumping = true;
boolean isFalling = false;
boolean isDisappearing = false;
boolean isFilling = false; // Variabel baru untuk animasi air naik
float transparency = 255;
float waterY = 1080; // Posisi awal air di bawah layar

void scene8() {
  awan();
  gunungjauh();
  gunung();
  tanah();
  
  pohon();

  // Animasi lompat ke air
  if (isJumping) {
    if (wanitaY > 300) {
      wanitaY -= 5; // Kecepatan lompatan
      wanitaX += 8; // Menggerakkan lebih ke kanan saat melompat
    } else {
      isJumping = false;
      isFalling = true;
    }
  }

  // Animasi jatuh ke air
  if (isFalling) {
    if (wanitaY < airLevel) {
      wanitaY += 5; // Kecepatan jatuh
    } else {
      isFalling = false; // Jika sudah di air, hentikan animasi jatuh
      isDisappearing = true; // Mulai animasi menghilang
    }
  }

  // Animasi menghilang
  if (isDisappearing) {
    transparency -= 5; // Efek menghilang

    // Jika transparansi sudah habis, hentikan animasi menghilang dan mulai animasi air naik
    if (transparency <= 0) {
      transparency = 0;
      isDisappearing = false;
      isFilling = true;
    }
  }

  // Animasi air naik
  if (isFilling) {
    if (waterY > 0) {
      waterY -= 5; // Kecepatan air naik
    } else {
      waterY = 0; // Pastikan air tidak naik lebih dari batas atas layar
    }
  }

  // Gambar wanita dengan posisi dan transparansi yang diatur
  if (transparency > 0) {
    drawWanita(wanitaX, wanitaY, transparency);
  }
  sungai();
  fillAir(waterY);
}

void drawWanita(float x, float y, float alpha) {
  // Cek apakah masih harus digambar atau sudah tidak
  if (alpha > 0) {
    // Rambut belakang
    noStroke();
    fill(0, alpha);
    bezier(x - 70, y + 15, x - 50, y - 120, x + 50, y - 120, x + 70, y + 15);

    // Kepala
    noStroke();
    fill(#f0c8a5, alpha);
    ellipse(x, y, 100, 120);

    // Rambut depan
    noStroke();
    fill(0, alpha);
    bezier(x - 50, y - 30, x - 50, y - 100, x + 50, y - 100, x + 50, y - 30);

    // Mata kiri
    fill(255, alpha);
    ellipse(x - 25, y - 10, 20, 10); // Iris
    fill(0, alpha);
    ellipse(x - 25, y - 10, 10, 10); // Pupil

    // Mata kanan
    fill(255, alpha);
    ellipse(x + 25, y - 10, 20, 10); // Iris
    fill(0, alpha);
    ellipse(x + 25, y - 10, 10, 10); // Pupil

    // Hidung
    stroke(0, alpha);
    strokeWeight(1);
    line(x, y, x + 3, y + 15);
    line(x + 3, y + 15, x, y + 15);

    // Mulut
    noStroke();
    fill(255, 105, 180, alpha);
    bezier(x - 15, y + 30, x - 10, y + 40, x + 10, y + 40, x + 15, y + 30); // Bibir bawah

    // Leher
    noStroke();
    fill(#f0c8a5, alpha);
    rect(x - 10, y + 55, 20, 15);

    // Tangan kanan
    noStroke();
    fill(#f0c8a5, alpha);
    beginShape();
    vertex(x + 40, y + 80);
    vertex(x + 40, y + 100);
    vertex(x + 100, y + 170);
    vertex(x + 120, y + 170);
    endShape(CLOSE);

    fill(0, alpha);
    ellipse(x + 110, y + 170, 20, 30);

    fill(#135D66, alpha);
    beginShape();
    vertex(x + 55, y + 95); // Titik awal lengan kiri
    bezierVertex(x + 100, y + 125, x + 100, y + 125, x + 55, y + 125); // Bezier curve 1
    endShape(CLOSE);

    // Tangan kiri
    noStroke();
    fill(#f0c8a5, alpha);
    beginShape();
    vertex(x - 40, y + 80);
    vertex(x - 40, y + 100);
    vertex(x - 100, y + 170);
    vertex(x - 120, y + 170);
    endShape(CLOSE);

    fill(0, alpha);
    ellipse(x - 110, y + 170, 20, 30);

    fill(#135D66, alpha);
    beginShape();
    vertex(x - 50, y + 95); // Titik awal lengan kiri
    bezierVertex(x - 100, y + 125, x - 100, y + 125, x - 50, y + 125); // Bezier curve 1
    endShape(CLOSE);

    // Badan
    noStroke();
    fill(#77B0AA, alpha);
    rect(x - 60, y + 70, 120, 180, 50);

    // Kaki kiri
    fill(#f0c8a5, alpha);
    rect(x - 40, y + 245, 30, 80); // Kaki kiri

    // Kaki kanan
    fill(#f0c8a5, alpha);
    rect(x + 10, y + 245, 30, 80); // Kaki kanan

    // Sepatu kiri
    fill(0, alpha);
    ellipse(x - 35, y + 330, 60, 30); // Sepatu kiri

    // Sepatu kanan
    fill(0, alpha);
    ellipse(x + 35, y + 330, 60, 30); // Sepatu kanan

    // Rok
    fill(150, 0, 0, alpha); // Warna rok
    quad(x - 60, y + 200, x + 60, y + 200, x + 50, y + 300, x - 50, y + 300);
  }
}

void sungai() {
  fill(#3DC2EC);
  stroke(0);
  beginShape();
  bezier(0, 1080, 500, 600, 1920, 400, 2000, 1080);
  endShape(CLOSE);
}

void fillAir(float y) {
  fill(#3DC2EC);
  rect(0, y, width, height - y);
}

void tanah() {
  fill(#06D001);
  beginShape();
  stroke(0);
  rect(0, 500, width, height);
  endShape();
}

void gunung() {
  fill(#597445);
  //gunung1
  beginShape();
  bezier(0, 500, 300, 350, 350, 200, 1000, 500);
  endShape(CLOSE);
  //gunung2
  beginShape();
  bezier(1000, 500, 1300, 350, 1350, 200, 2000, 500);
  endShape(CLOSE);
}

void gunungjauh() {
  fill(#658147);
  //gunung1
  beginShape();
  bezier(-100, 500, 200, 300, 350, 300, 500, 500);
  endShape(CLOSE);
  //gunung2
  beginShape();
  bezier(800, 500, 1000, 400, 1050, 400, 1200, 500);
  endShape(CLOSE);
  //gunung3
  beginShape();
  bezier(1700, 500, 1800, 400, 1850, 350, 2100, 500);
  endShape(CLOSE);
}

void pohon() {
  fill(125, 71, 42);
  for (int i = -5; i <= 1920; i += 125) {
    rect(i, 300, 35, 300);
  }

  fill(52, 112, 50);
  for (int j = 0; j <= 50; j += 10) {
    for (int i = 0; i <= 1920; i += 125) {
      triangle(15 + i, 210 + j, 60 + i, 400 + j, -30 + i, 400 + j);
    }
  }
}

void awan() {
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
