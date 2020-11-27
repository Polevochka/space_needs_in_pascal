Program zadacha1;
var a, b: integer;
begin

    {enter a, b}
    write('a: '); readln(a);
    write('b: '); readln(b);

    if a = 0 then writeln(3)
    else if a > 0 then
        if b = 0 then writeln(3)
        else if b > 0 then
            {a > 0 and b > 0}
            writeln(1)
        else
            {a > 0 and b < 0}
            writeln(2)
    else
        if b = 0 then writeln(3)
        else if b > 0 then
            {a < 0 and b > 0}
            writeln(2)
        else
            {a < 0 and b < 0}
            writeln(1);

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
