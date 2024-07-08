void bg2(){
  fill(#A67B5B);
  noStroke();
  rect(0,700,width,700);
  
  // Gambar pohon
  fill(125,71,42);
  for(int i = -5; i <= 1920; i += 125){
    rect(i,300,35,400);
  }
  
  // Gambar daun pohon
  fill(52,112,50);
  for(int j = 0; j<=100; j += 10){
    for(int i = 0; i <= 1920; i+=125){
      triangle(15+i, 220+j, 60+i, 400+j, -30+i, 400+j);
    }
  }
}
