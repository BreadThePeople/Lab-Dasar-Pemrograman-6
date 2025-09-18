//program test;

//AWOKAWOKAWOK
uses crt;
var
    //String = satu kata
    //Nama variabel : tipe variabel
    nama : string;

    //Integer = Angka 
    umur : integer;

    //char = Alphabet
    jenis_kelamin : char;

    //real = desimal
    ip : real;

// konstanta
const
    pi = 3.14;
    gravitasi = 9.8;

begin

    clrscr;
    //writeln('hello world');
    writeln('Nama Mahasiswa : '); readln(nama);
    writeln('Ukmur Mahasiswa: '); readln(umur);
    writeln('Jenis Kelamin Mahasiswa : '); readln(jenis_kelamin);
    writeln('IP Mahasiswa : '); readln(ip);

    clrscr;
    writeln('Ini data yang anda masukan');
    writeln('Nama Mahasiwa Yang Anda Input: ',  nama);
    writeln('Umur Mahasiswa Yang Anda Input: ',  umur);
    writeln('Jenis Kelamin Mahasiswa Yang Anda Iput: ',  jenis_kelamin);
    writeln('IP Mahasiswa Yang Anda Input: ',  ip:0:2);
end.