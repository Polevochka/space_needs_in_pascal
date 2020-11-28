Program zadacha11_sposob1;
var i, j, k, min, nm, ts: integer;
    r : array [1..50] of integer;
begin
    {the lowest insert into k place}
    
    {enter the count of soldiers}
    write('Enter k: '); readln(k);

    for i := 1 to k do
    begin
        {Enter solder}
        write('soldier ', i, ': '); readln(r[i]);
    end;

    for i := k downto 2 do
    begin
        min := r[i];
        nm := i;
        for j := i-1 downto 1 do
        begin
            if r[j] < min then
            begin
                nm := j;
                min := r[j]
            end; 
        end;
        ts := r[i];
        r[i] := r[nm];
        r[nm] := ts;
    end;             

    for i := 1 to k do
    begin
        write(' ', r[i]);
    end;
    writeln;

    {pause before exit}
    writeln('Press [Enter] to exit');
    readln;
end.
