program UrutkanNilaiUAS;
uses crt;

const
    MAX_MHS = 10;

var
    n, i, j: integer;
    nilaiUAS: array[1..MAX_MHS] of integer;
    temp: integer;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa (1-10): ');
    readln(n);

    if (n < 1) or (n > MAX_MHS) then
    begin
        writeln('Jumlah mahasiswa harus antara 1 sampai 10.');
        exit;
    end;

    writeln('Masukkan nilai UAS mahasiswa:');
    for i := 1 to n do
    begin
        write('Nilai mahasiswa ke-', i, ': ');
        readln(nilaiUAS[i]);
    end;

    // Proses sorting - Bubble Sort (dari rendah ke tinggi)
    for i := 1 to n - 1 do
    begin
        for j := 1 to n - i do
        begin
            if nilaiUAS[j] > nilaiUAS[j + 1] then
            begin
                temp := nilaiUAS[j];
                nilaiUAS[j] := nilaiUAS[j + 1];
                nilaiUAS[j + 1] := temp;
            end;
        end;
    end;

    writeln;
    writeln('Nilai UAS setelah diurutkan dari terendah ke tertinggi:');
    for i := 1 to n do
    begin
        write(nilaiUAS[i]);
        if i < n then
            write(' ');
    end;
    writeln;

    readln;
end.