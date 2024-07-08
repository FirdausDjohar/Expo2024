int scene = 1; // variabel untuk menunjukkan scene saat ini
int sceneStartTime; // waktu mulai setiap scene
int sceneDuration = 10000; // durasi setiap scene dalam milidetik (10 detik)

void setup() {
  size(1920, 1080);
  sceneStartTime = millis(); // set waktu mulai scene pertama
  
  scene2Setup(); // Panggil setup dari scene2
  scene6Setup(); // Panggil setup dari scene6
  scene7Setup(); // Panggil setup dari scene7
}

void draw() {
  background(255);
  
  // Pilih scene yang akan ditampilkan berdasarkan nilai variabel scene
  switch(scene) {
    case 1:
      scene1(); // Memanggil scene1
      break;
    case 2:
      scene2Draw(); // Memanggil scene2
      break;
    case 3:
      scene3(); // Memanggil scene3
      break;
    case 4:
      scene4(); // Memanggil scene4
      break;
    case 5:
      scene5(); // Memanggil scene5
      break;
    case 6:
      scene6Draw(); // Memanggil draw dari scene6
      break;
    case 7:
      scene7Draw(); // Memanggil draw dari scene7
      break;
    case 8:
      scene8(); // Memanggil scene8
      break;
    case 9:
      scene9();
      break;
    default:
      // Tambahkan default action jika nomor scene berada di luar rentang yang diharapkan
      break;
  }
  
  // Periksa apakah sudah waktunya untuk pindah ke scene berikutnya
  if (millis() - sceneStartTime > sceneDuration) {
    scene++;
    if (scene > 9) { // Sesuaikan dengan jumlah scene
      exit(); // Keluar dari program setelah scene terakhir
    } else {
      sceneStartTime = millis(); // reset waktu mulai scene baru
    }
  }
}
