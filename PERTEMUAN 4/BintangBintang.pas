// ...existing code...
uses crt;
var
    i, j: integer;
begin

   clrscr;

    i := 5;
    while i >= 1 do
    begin
        j := 1;
        while j <= i do
        begin
            write('* ');
            j := j + 1;
        end;
        writeln;
        i := i - 1;
    end;
end.