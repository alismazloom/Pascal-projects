 uses crt;
 var
    a,c,i:integer;
    m,x:longint;
 begin
    clrscr;
    a:=65;
    c:=271;
    x:=17;
    m:=1024;
    for i:= 1 to 100 do
    begin
       x:=(a*x+c) mod m;
       writeln(x/m:5:4);
       delay(100);
    end;
 end.
