Program zadacha3;
var n, f, i: integer;
begin
    {enter n}
    write('Enter the number: '); readln(n);

    f := 1;
    i := 1;
    while i < n do
    begin
        i := i + 1;
        f := f*i;        
    end;

    writeln(f);  

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.