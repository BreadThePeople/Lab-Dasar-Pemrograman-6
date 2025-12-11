program UrutanAntrianMahasiswa;
uses crt;

const
    MAX_MHS = 10;

var
    n, i: integer;
    nim: array[1..MAX_MHS] of string;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);
    if (n < 1) or (n > MAX_MHS) then
    begin
        writeln('Jumlah mahasiswa harus antara 1 sampai 10.');
        exit;
    end;

    writeln('Masukkan NIM mahasiswa dari depan ke belakang (pisahkan dengan spasi):');
    for i := 1 to n do
    begin
        read(nim[i]);
    end;

    writeln;
    writeln('Output (dari belakang ke depan):');
    for i := n downto 1 do
    begin
        write(nim[i]);
        if i > 1 then
            write(' ');
    end;
    writeln;

    readln;
end.