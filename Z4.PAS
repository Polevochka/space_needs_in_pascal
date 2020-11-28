Program zadacha4;
var k, i, s, n, sum, r: integer;
begin
    write('Enter n: '); readln(n);

    i := 1;
    k:= 0;
    sum := 0;
    r := 0;
    while (i <= n) do
    begin
        {enter s}
        write('student ', i, ': '); readln(s);
        if s > 0 then
        begin
            sum := sum + s;
            k := k + 1;
        end;

        i := i + 1;
    end;

    r := sum div k;
    writeln(r);

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
