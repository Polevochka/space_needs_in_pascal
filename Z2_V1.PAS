Program zadacha2_sposob1;
var a, b, c: integer;
begin
    {enter a, b, c}
    write('Enter three numbers: '); readln(a, b, c);
    if a = b then writeln(1, ', ', a)
    else if a = c then writeln(1, ', ', c)
    else if b = c then writeln(1, ', ', b)
    else writeln(2);

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.