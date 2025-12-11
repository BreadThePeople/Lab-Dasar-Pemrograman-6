program Pointer;
uses crt, sysutils;

var
    angka : integer; {variabel biasa}
    alamat_angka : ^integer; {variabel pointer}

begin
    clrscr;

    // angka := 10;
    // alamatAngka := @angka;  

    // writeln('isi variabel angka : ', angka);
    // writeln('alamat variabel angka : ', PtrUInt(@angka));
    // writeln('isi pointer : ', PtrUInt(alamatAngka));
    // writeln('isi nilai yang diambil pointer : ', alamatAngka^);

    alamat_angka^ := 20; 
    writeln('isi angka setelah diubah :  ', angka);
    writeln('isi angka setelah diubah : ', alamat_angka^);

end.