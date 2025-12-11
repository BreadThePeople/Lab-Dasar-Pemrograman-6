program HitungNilaiMahasiswa;
uses crt;

type
    MahasiswaType = record
        tugas: real;
        kuis: real;
        uts: real;
        uas: real;
        rata_rata: real;
        status: string[15];
    end;

var
    mahasiswa: array[1..5] of MahasiswaType;
    n, i: integer;

function HitungRataRata(tugas, kuis, uts, uas: real): real;
begin
    HitungRataRata := (tugas + kuis + uts + uas) / 4;
end;

function TentukanStatus(rata_rata: real): string;
begin
    if rata_rata >= 70 then
        TentukanStatus := 'Lulus'
    else
        TentukanStatus := 'Tidak Lulus';
end;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa: ');
    readln(n);
    if not (1 <= n) or not (n <= 5) then
    begin
        writeln('Jumlah mahasiswa harus antara 1 dan 5.');
        exit;
    end;

    for i := 1 to n do
    begin
        writeln;
        writeln('Masukkan nilai mahasiswa ke-', i, ':');
        write('Nilai tugas: ');
        readln(mahasiswa[i].tugas);
        write('Nilai kuis: ');
        readln(mahasiswa[i].kuis);
        write('Nilai UTS: ');
        readln(mahasiswa[i].uts);
        write('Nilai UAS: ');
        readln(mahasiswa[i].uas);
        
        mahasiswa[i].rata_rata := HitungRataRata(mahasiswa[i].tugas, mahasiswa[i].kuis, mahasiswa[i].uts, mahasiswa[i].uas);
        mahasiswa[i].status := TentukanStatus(mahasiswa[i].rata_rata);
    end;

    writeln;
    writeln('Hasil:');
    for i := 1 to n do
    begin
        writeln('Mahasiswa ke-', i, ':');
        writeln('  Tugas: ', mahasiswa[i].tugas:0:2);
        writeln('  Kuis: ', mahasiswa[i].kuis:0:2);
        writeln('  UTS: ', mahasiswa[i].uts:0:2);
        writeln('  UAS: ', mahasiswa[i].uas:0:2);
        writeln('  Rata-rata: ', mahasiswa[i].rata_rata:0:2);
        writeln('  Status: ', mahasiswa[i].status);
        writeln;
    end;

    readln;
end.