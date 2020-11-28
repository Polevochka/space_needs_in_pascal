Program zadacha4_sposob2;
var k, s, kos, n, sum, r: integer;
begin
    write('Enter k: '); readln(k);

    kos := k;
    sum := 0;
    n := 0;
    while (kos >= 1) do
    begin
        {enter s}
        write('student ', k-kos+1, ': '); readln(s);
        if s > 0 then
        begin
            sum := sum + s;
            n := n + 1;
        end;

        kos := kos - 1;
    end;

    if n = 0 then writeln(2)
    else
    begin
        r := sum div n;
        writeln(r);
    end;

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
