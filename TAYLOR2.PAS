 uses Crt;
 var
    u,x,sum:Real;
    i,k,sign:shortint;
    v:longint;
 begin
    read(x);
    x:=x*pi/180;
    clrscr;
    i:=1;sign:=1;sum:=0;
    repeat
       u:=1;
       v:=1;
       for k:=1 to (2*i-1) do
       begin
          u:=u*x;
          v:=v*k;
       end;
       sum:=sum + sign * u / v;
       sign:=-sign;
       i:=i+1;
    until (abs(u/v) < 0.000001);
    writeln(sum:10:9);
 end.