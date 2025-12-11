program KasirRestoran;
uses crt;

var
  pilihan, jumlah, total, harga, subtotal : longint;
  ulang : char;
  namaMenu : string;

begin
  clrscr;
  total := 0;

  writeln('=== KASIR Perabotan AwokAwok ===');
  writeln;

  repeat
    writeln('Daftar Menu:');
    writeln('1. Kursi - Rp25000');
    writeln('2. Sofa  - Rp375000');
    writeln('3. Kasur      - Rp200000');
    writeln('4. Sapu     - Rp35000');
    writeln('5. Ember    - Rp40000');
    writeln('6. Selesai');
    writeln;

    write('Pilih menu (1-6): ');
    readln(pilihan);

    case pilihan of
      1: begin
          namaMenu := 'Kursi';
           harga := 25000;
         end;
      2: begin
           namaMenu := 'Sofa';
           harga := 375000;
         end;
      3: begin
           namaMenu := 'Kasur';
           harga := 200000;
         end;
      4: begin
           namaMenu := 'Sapu';
           harga := 35000;
         end;
      5: begin
           namaMenu := 'Ember';
           harga := 40000;
         end;
      6: begin
           writeln('Selesai memilih menu.');
           break;
         end;
    else
      writeln('Pilihan tidak valid!');
      continue;
    end;

    (* TODO 1: Input jumlah pesanan dan hitung subtotal *)
    write('Masukkan jumlah pesanan ', namaMenu, ': ');
    readln(jumlah);
    subtotal := harga * jumlah;

    (* TODO 2: Tambahkan subtotal ke total keseluruhan *)
    total := total + subtotal;
    writeln('Pesanan berhasil ditambahkan. Subtotal: Rp', subtotal);
    writeln;

    (* TODO 3: Tanya apakah ingin memesan lagi *)
    write('Tambah pesanan lagi? (Y/N): ');
    readln(ulang);

    if (ulang = 'N') or (ulang = 'n') then
      break;

  until (pilihan = 4);

  writeln;
  writeln('===========================');
  writeln('Total Keseluruhan: Rp', total);
  writeln('Terima kasih telah berbelanja!');
  writeln('===========================');

  (* TODO 4: Gunakan exit untuk menutup program *)
  exit;
end.