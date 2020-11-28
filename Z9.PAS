Program zadacha9;
var k, N, sum, min, KN, kp, s: integer;
    mn : array [1..50] of integer; {50 is maximum count of students in a group}
begin

    {enter count of students}
    write('Enter k: '); readln(k);

    N := 1;
    sum := 0;
    min := 0;
    kp := 0;
    KN := 0;

    while N <= k do
    begin
        {enter scholarship of one student}
        write('student ', N, ': '); readln(s);

        if s > 0 then
        begin
            if min = 0 then
            begin
                min := s;
                KN := 1;
                mn[KN] := N;
            end
            else
            begin 
                if s < min then
                begin
                    min := s;
                    KN := 1;
                    mn[KN] := N;
                end
                else if s = min then
                begin
                    KN := KN + 1;
                    mn[KN] := N;
                end;
            end;

            sum := sum + s;
            kp := kp + 1;
        end;

        N := N + 1;
    end;

    if min = 0 then writeln('Output 3')
    else
    begin
        if (min = (sum div kp)) then writeln('Output 2, Sr = Smin = ', min)
        else
        begin
            write('Output 1:');
            N:= 1;
            while N <= KN do
            begin
                write(' ', mn[N]);
                N := N + 1;
            end;
            writeln;
        end;
    end;

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
