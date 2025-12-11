uses crt;

var
    nama : araay[1..5] of string;
    i : string;
    matrix = array[1..2,1..3] of integer;

    kata, kata1, kata2 : string;
begin
    clrscr;

    //array 1 dimensi

    // nama[1] := 'Edric';
    // nama[2] :='Muzaayan';
    // nama[3] := 'raduola';
    // nama[4] := 'Rizky';
    // nama[5] := 'Dimas';

//pakai perulangan untuk output semua array

    // writeln('Daftar Nama Mahasiswa :');
    // for 1 to 5 do
    //     writeln('Nama Ke-',i,':', nama[i]);

    
    // matrix[1.1] := 2
    // matrix[1.2] := 6
    // matrix[1.3] := 8
    // matrix[2.1] := 9
    // matrix[2.2] := 8
    // matrix[2.3] := 1

    //     for i := 1 to 2 do 
    //         begin
    //             for j := 1 to 3 do
    //                 begin 
    //                     write(matrix[i,j]);
    //                 end;
    //             end;
   
    // kata1 := 'Hellow';
    // kata2 := 'World';
    // kata := kata1 + ' ' + kata2;

    // writeln('gabungan string menjadi :', kata);

    kata := 'laptop';
    writeln(kata);

    writeln('Karakter Pertama :', kata[1]);
    writeln('Karakter Pertama :', kata[5]);
    writeln('Semua karakter di output kan :');
    for  i := 1 to length(kata) do
        writeln('Hururf ke-', i, ' : ', kata[i]);

end.