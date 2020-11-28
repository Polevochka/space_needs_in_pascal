Program zadacha4_sposob1;
var k, i, n, sum, sr, r, a, b: integer;
    s : array [1..50] of integer; {50 is maximum count of students in a group}
begin
    {enter count of students}
    write('Enter n: '); readln(n);

    i := 1;
    k := 0;
    sum := 0;
    a := 0;
    b := 0;

    while i <= n do
    begin
        {enter scholarship of one student}
        write('student ', i, ': '); readln(s[i]);
        if s[i] > 0 then
        begin
            sum := sum + s[i];
            k := k + 1;
        end;

        i := i + 1;
    end;

    if k > 0 then 
    begin
        sr := sum div k;
        repeat
            i:= i -1;
            if s[i] >= sr then b := b + 1
            else
                if s[i] > 0 then a := a + 1
                else b := b + 1;
        until (a+b = n);

        if a = 0 then writeln('Output 3, SR = ', sr)
        else writeln('Output 2, a = ', a, ', SR = ', sr);
    end
    else writeln('Output 1');

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
