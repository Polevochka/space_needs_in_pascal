Program zadacha6;
var n, s_max, sr, kp, i, s: integer;
begin

    i := 1;
    s_max := 0;
    sr := 0;
    kp := 0;

    {enter count of students}
    write('Enter n: '); readln(n);

    while i <= n do
    begin
        {enter scholarship of one student}
        write('student ', i, ': '); readln(s);

        if s > 0 then
        begin
            if s > s_max then s_max := s;
            sr := sr + s;
            kp := kp + 1;
        end;
        i := i + 1;
    end;

    if sr = 0 then writeln('Output 2')
    else
    begin
        sr := sr div kp;
        if s_max = sr then writeln('Output 3')
        else writeln('Output 1, Smax = ', s_max);
    end;

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
