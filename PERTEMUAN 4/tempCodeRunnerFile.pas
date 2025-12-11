// ...existing code...
{
NIM_1 :
NIM_2 :
}

uses crt, sysutils;

var 
  pilihan: integer;
  namaMenu: string;
  harga, jumlah, subtotal, total: longint;
  lagi: char;

begin
  clrscr;
  total := 0;

  writeln('=== KASIR RESTORAN IKLC ===');
  writeln;

  repeat
    writeln('Daftar Menu:');
    writeln('1. Nasi Goreng - Rp15000');
    writeln('2. Mie Goreng  - Rp12000');
    writeln('3. Es Teh      - Rp5000');
    writeln;

    write('Pilih menu (1-3): '); readln(pilihan);

    case pilihan of
      1: begin namaMenu := 'Nasi Goreng'; harga := 15000; end;
      2: begin namaMenu := 'Mie Goreng';  harga := 12000; end;
      3: begin namaMenu := 'Es Teh';      harga := 5000;  end;
    else
      begin
        writeln('Pilihan tidak valid. Tekan Enter untuk mencoba lagi.'); readln;
        continue;
      end;
    end;

    write('Jumlah pesanan: '); readln(jumlah);
    if jumlah < 1 then
    begin
      writeln('Jumlah tidak boleh kurang dari 1. Pesanan dibatalkan. Tekan Enter.'); readln;
      continue;
    end;

    subtotal := harga * jumlah;
    total := total + subtotal;

    writeln('Anda memesan: ', namaMenu, ' x', jumlah, ' = Rp', subtotal);
    writeln;

    write('Ingin memesan lagi? (y/n): '); readln(lagi);
    lagi := Up
