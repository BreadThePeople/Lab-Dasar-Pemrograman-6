program LuasPersegiPanjang;

uses crt;

var
  panjang, lebar: real;      { Variabel global untuk menyimpan panjang dan lebar persegi panjang}

{Function untuk menghitung luas persegi panjang}
{Fungsi ini menerima dua parameter: panjang dan lebar, lalu mengembalikan hasil perkaliannya sebagai luas}
function HitungLuas(p, l: real): real;
begin
  HitungLuas := p * l;       { Rumus luas persegi panjang: panjang * lebar}
end;

{Procedure untuk menghitung dan menampilkan luas persegi panjang}
{Procedure ini menerima dua parameter: panjang dan lebar, menghitung luas, dan langsung menampilkannya}
procedure HitungDanTampilkan(p, l: real);
var
  luas: real;                 {Variabel lokal untuk menyimpan hasil perhitungan di dalam procedure}
begin
  luas := p * l;              {Menghitung luas dengan rumus panjang * lebar}
  writeln('Hasil dari procedure: ', luas:0:2);  {Menampilkan hasil perhitungan dengan format 2 desimal}
end;

// Bagian utama program (main block)
begin
  clrscr; // Membersihkan layar konsol untuk tampilan yang bersih
  
  // Meminta input dari pengguna untuk panjang dan lebar
  write('Masukkan panjang: '); // Menampilkan prompt untuk input panjang
  readln(panjang); // Membaca input panjang dari pengguna
  
  write('Masukkan lebar: '); // Menampilkan prompt untuk input lebar
  readln(lebar); // Membaca input lebar dari pengguna
  
  // Menggunakan function untuk menghitung luas dan menampilkan hasilnya
  writeln('Hasil dari function: ', HitungLuas(panjang, lebar):0:2); // Memanggil function HitungLuas dan menampilkan hasilnya dengan format 2 desimal
  
  // Menggunakan procedure untuk menghitung dan menampilkan luas
  HitungDanTampilkan(panjang, lebar); // Memanggil procedure HitungDanTampilkan yang akan menghitung dan menampilkan hasilnya sendiri
  
  readln; // Menunggu input untuk mencegah program langsung keluar (opsional, tergantung compiler)
end.