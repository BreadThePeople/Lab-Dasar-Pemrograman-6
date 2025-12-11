uses crt;

{--------------------------------------------}
{ 1️⃣ TYPE DEFINITION                          }
{--------------------------------------------}
type
    TAlamat = record
        jalan : string[50];
        kota : string[50];
        kode_pos : integer ;
    end;

    TMahasiswa = record
        nama : string[50];
        umur : integer;
        ipk : real;
        alamat : TAlamat; {nested record}
    end;
{--------------------------------------------}
{ 2️⃣ VARIABLE DECLARATION                     }
{--------------------------------------------}

var
    mhs : TMahasiswa;
    dataMhs : array[1..100] of TMahasiswa;  {araay record}
    n, i : integer;

{============================================================}
{                    SECTION 1                               }
{      IMPLEMENTASI SIMPLE RECORD + NESTED RECORD            }
{============================================================}

begin
  clrscr;

  { INPUT DATA }
    // write('Nama : '); readln(mhs.nama);
    // write('Umur : '); readln(mhs.Umur);
    // write('IPK : '); readln(mhs.ipk);

    // writeln('--Space Untuk Alamat--');
    // write('Jalan : '); readln(mhs.alamat.jalan);
    // write('Kota : '); readln(mhs.alamat.kota);
    // write('Kode Pos : '); readln(mhs.alamat.kode_pos);
  { OUTPUT }
    // writeln('Hasil Output');
    // writeln('Nama :  ',mhs.nama);
    // writeln('Umur :  ',mhs.umur);
    // writeln('IPK :  ',mhs.ipk,0:2);
    // writeln('Alamat : ',mhs.alamat.jalan, ', ', mhs.alamat.kota, ', ', mhs.alamat.kode_pos);
{============================================================}
{                    SECTION 2                               }
{       IMPLEMENTASI RECORD + WITH ... DO                    }
{============================================================}

  { WITH DO untuk nested record }

  { OUTPUT }
//   with mhs do
//     begin
//         writeln('Nama : ', nama);
//         writeln('Umur : ', umur);
//         writeln('IPK: ', ipk:0:2);
//     end;

//     with mhs.alamat do 
//         begin
//         writeln('Alamat :', jalan, ', ', kota, ', ', kode_pos);
//     end;

{============================================================}
{                    SECTION 3                               }
{                ARRAY OF RECORD                             }
{============================================================}

  { INPUT ARRAY }
    write('masukan Jumlah Mahasiswa : '); readln(n);

    for i := 1 to n do 
    begin
        writeln('Mahasiswa ke- ', i);
        write('Nama : '); readln(dataMhs[i].nama);
        write('Umur : '); readln(dataMhs[i].Umur);
        write('IPK : '); readln(dataMhs[i].ipk);

        writeln('Alamat');
        write('Jalan : '); readln(dataMhs[i].alamat.jalan);
        write('Kota : '); readln(dataMhs[i].alamat.kota);
        write('Kode Pos : '); readln(dataMhs[i].alamat.kode_pos);

        writeln;
        writeln('DAFTAR MAHASISWA');
    end;
  { OUTPUT ARRAY }
  clrscr;
    for i := 1 to n do
        begin
            writeln('Mahasiswa Ke-', i);

            with dataMhs[i] do
             begin
                writeln('Nama : ', nama);
                writeln('Umur : ', umur);
                writeln('IPK : ', ipk:0:2);
             end;

            with dataMhs[i].alamat do
                begin
                   writeln('jalan: ', jalan);
                   writeln('Kota: ', kota);
                   writeln('Kode Pos: ', kode_pos);
                end;
        end;
end.