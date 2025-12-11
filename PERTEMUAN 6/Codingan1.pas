uses crt;

{--------------------------------------------}
{ 1️⃣ Procedure Sederhana: Menampilkan Pesan  }
{--------------------------------------------}
procedure sapa_user;
begin
    writeln('Selamat datang di live coding pertemuan 6!');
end;
{----------------------------------------------------}
{ 2️⃣ Function dengan Parameter Array: Hitung Rata-rata }
{----------------------------------------------------}
function rata_rata(n :integer; data : array of integer):real;


var i, total : integer;
begin
    total := 0;
    for i := 0 to n - 1 do
    begin
        total := total + data[i];
    end;
    rata_rata := total / n;
end;
// function perlu memanggil nilai akhirnya dengan variabel function itu sendiri
{---------------------------------------------}
{ 3️⃣ Function Rekursif: faktorial dari n!     }
{---------------------------------------------}
function faktorial(n:integer) : longint;
begin
    if n = 1 then
        faktorial := 1
    else
        faktorial := n * faktorial(n-1);
        {
            faktorial(5) + 5*4*3*2*1

            faktorial(5) = 5 * faktorial(4); n = 4
            faktorial(4) = 4 * faktorial(3); n = 3
            faktorial(3) = 3 * faktorial(2); n = 2
            faktorial(2) = 2 * faktorial(1)

        }
end;


{---------------------------------------------}
{               PROGRAM UTAMA                 }
{---------------------------------------------}
var
    bil : array[1..5] of integer ;
    i, n, nilai : integer;
  
// Main Program
begin
    clrscr;
    // sapa_user;
    // sapa_user;
    // sapa_user;

    // writeln('Masukan Jumlah Angka :');
    // readln(n);

    // for i := 1 to n do
    //     begin
    //         write('Data Ke-', i, ';');
    //         readln(bil[i]);
    //     end;

    // writeln('Rata Rata (pakai function) : ', rata_rata(n,bil):0:2);


    write('masukan Angka Favorit Anda : ');
    readln(nilai);
    writeln('Faktorial dari ', nilai, ' adalah : ', faktorial(nilai));
end.