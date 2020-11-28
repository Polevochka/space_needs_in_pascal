Program zadacha8_sposob2;
var k, sum, max, kn, kp, i, s: integer;
    mn : array [1..50] of integer; {50 is maximum count of students in a group}
begin

    {enter count of students}
    write('Enter k: '); readln(k);

    i := 1;
    sum := 0;
    max := 0;
    kp := 0;
    kn := 0;

    while i <= k do
    begin
        {enter scholarship of one student}
        write('student ', i, ': '); readln(s);

        if s > 0 then
        begin
            if s > max then
            begin
                max := s;
                kn := 1;
                mn[kn] := i;
            end
            else if s = max then
            begin
                kn := kn + 1;
                mn[kn] := i;
            end;

            sum := sum + s;
            kp := kp + 1;
        end;

        i := i + 1;
    end;

    if max = 0 then writeln('Output 3')
    else
    begin
        if (max = (sum div kp)) then writeln('Output 2, Sr = Smax = ', max)
        else
        begin
            write('Output 1:');
            i:= 1;
            while i <= kn do
            begin
                write(' ', mn[i]);
                i := i + 1;
            end;
            writeln;
        end;
    end;

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
