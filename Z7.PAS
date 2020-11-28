Program zadacha7;
var n, s_min, sr, k, i, s: integer;
begin

    i := 1;
    s_min := 0;
    sr := 0;
    k := 0;

    {enter count of students}
    write('Enter n: '); readln(n);

    while i <= n do
    begin
        {enter scholarship of one student}
        write('student ', i, ': '); readln(s);

        if s > 0 then
        begin
            sr := sr + s;
            k := k + 1;

            if s_min = 0 then s_min := s
            else
                if s < s_min then s_min := s;
        end;
        i := i + 1;
    end;

    if s_min = 0 then writeln('Output 1, Smin = ', s_min)
    else
    begin
        sr := sr div k;
        if s_min = sr then writeln('Output 3, Smin = ', s_min)
        else writeln('Output 2, Smin = ', s_min);
    end;

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
