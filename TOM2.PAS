 {$N+}
 uses crt;
 var
    i,k:byte;
 function power(b:Byte):extended;
 var
    c:extended;
 begin
    c:=1;
    for k:=1 to b do
      c:=2*c;
    power:=c;
 end;
 function prime(x:extended):Boolean;
 var
    a : extended;
    c : Boolean;
 begin
    c:=true;
    a:=2;
    while (a <= sqrt(x)) do
       if (round(x) mod round(a) <> 0) then
         a:=a+1
       else
       begin
          c:=false;
          break;
       end;
    prime:=c;
 end;
 begin
    clrscr;
    for i:=1 to 30 do
      if (prime(power(i+1)-1)=true) then
        writeln(power(i)*(power(i+1)-1):0:0);
    readln;
 end.