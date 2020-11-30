Program kontrolnaya_rabota;
var k, i, s, n: integer;
begin
    write('Enter k: '); readln(k);

    i := 1;
    s := 0;
    n := 1;
    while i <= k do
    begin
        s := s + i*n;
        n := n * (-1);
        i := i + 1;
    end;

    writeln('Sum = ', s);

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.