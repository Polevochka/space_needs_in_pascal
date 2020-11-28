Program zadacha4_sposob1;
var k, i, s, n, sum, r: integer;
begin
    write('Enter k: '); readln(k);

    i := 0;
    sum := 0;
    n := 0;

    while i < k do
    begin
        {enter s}
        write('student ', i+1, ': '); readln(s);
        if s > 0 then
        begin
            sum := sum + s;
            n := n + 1;
        end;

        i := i + 1;
    end;

    if n = 0 then writeln('2, No scholarship')
    else
    begin
        r := sum div n;
        writeln('1, SR=',r);
    end;

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
