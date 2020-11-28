Program zadacha8_sposob1;
var n, n_max, sr, kp, i: integer;
    s : array [1..50] of integer; {50 is maximum count of students in a group}
begin

    i := 1;
    n_max := 0;
    sr := 0;
    kp := 0;

    {enter count of students}
    write('Enter n: '); readln(n);

    repeat
        {enter scholarship of one student}
        write('student ', i, ': '); readln(s[i]);

        if s[i] > 0 then
        begin
            if n_max = 0 then n_max := i
            else
                if s[i] > s[n_max] then n_max := i;

            sr := sr + s[i];
            kp := kp + 1;
        end;
        i := i + 1;
    until (i > n);

    if n_max = 0 then writeln('Output 3')
    else
    begin
        sr := sr div kp;
        if s[n_max] = sr then writeln('Output 2, Sr = Smax = ', s[n_max])
        else writeln('Output 1, Nmax = ', n_max,' , Smax = ', s[n_max]);
    end;

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
