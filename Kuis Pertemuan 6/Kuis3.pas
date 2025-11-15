uses crt, math;

{ Function untuk menentukan apakah suatu bilangan prima atau tidak }
function IsPrime(n: integer): boolean;
var
  i, batas: integer;
begin
  // TODO 1: Handle bilangan kurang dari 2
  if n < 2 then
  begin
    IsPrime := false;
    Exit;
  end;

  // TODO: Handle bilangan 2
  if n = 2 then
  begin
    IsPrime := true;
    Exit;
  end;

  // TODO 3 : Handle bilangan genap
  if (n mod 2) = 0 then
  begin
    IsPrime := false;
    Exit;
  end;

  // TODO 4: Cek faktor ganjil sampai akar kuadrat n
  batas := trunc(sqrt(n)); // batas pengecekan
  i := 3;
  while i <= batas do
  begin
    if (n mod i) = 0 then
    begin
      IsPrime := false;
      Exit;
    end;
    i := i + 2; // hanya cek bilangan ganjil
  end;

  // TODO 5: jika tidak ditemukan faktor maka prima
  IsPrime := true;
end;

{ Program Utama }
var
  n: integer;

begin
  clrscr;
  // minta user masukkan angka
  write('Masukkan Angka Anda: ');
  readln(n);

  // Memanggil function IsPrime dan tampilkan hasil
  if IsPrime(n) then
    writeln(n, ' adalah bilangan prima.')
  else
    writeln(n, ' bukan bilangan prima.');

end.