Program zadacha10A_sposob1;
var i, k, min, nm: integer;
    r : array [1..50] of integer;
begin
    {the lowest insert into k place}
    
    {enter the count of soldiers}
    write('Enter k: '); readln(k);
    {Enter solder}
    write('soldier ', 1, ': '); readln(r[1]);

    i:= 2;
    nm := 1;
    while k >= i do
    begin
        {Enter solder}
        write('soldier ', i, ': '); readln(r[i]);

        if r[i] < r[nm] then
            nm := i;

        i := i + 1;
    end;

    i := nm;
    while (i < k) do
    begin
        min := r[i];
        r[i] := r[i+1];
        r[i+1] := min;
        i := i + 1;
    end;

    i := 1;
    while i <= k do
    begin
        write(' ', r[i]);
        i := i + 1;
    end;
    writeln;

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
