  {$N+}
  var
    sign:shortint;
    i,n:longint;
    sum:extended;
  begin
    sign:=1;
    write('Enter the number:');
    read(n);
    for i:=1 to n do
    begin
      sum:=sum+sign*1/(2*i-1);
      sign:=-sign;
    end;
    writeln;
    writeln(sum*4:20:19);
    writeln(pi:20:19);
 end.