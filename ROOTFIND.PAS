 program rootfinder;
 {$N+}

 const
    h = 0.0000001;
 var
    j,k,t,w,r:word;
    x1,c : extended;
    i : real;
    x : array [0..100] of extended;
 function pow(a:extended;b:byte):extended;
 var
    k:byte;
 begin
    c:=1;
    for k:=1 to b do
       c:=c*a;
    pow:=c;
 end;
 function f(x:extended):extended;
 begin
    c:=();
    f:=c;
 end;
 function f1(a:extended):extended;
 begin
    c:=(f(a+h)-f(a))/h;
    f1:=c;
 end;
 function d2(a:extended):extended;
 begin
    c:=(f(a+h)-2*f(a)+f(a-h))/sqr(h);
    d2:=c;
 end;
 begin
    i:=-10;
    r:=1;
    while (i<10) do
    begin
       x[0]:=i;
       i:=i+0.1;
       if (f1(x[0])=0) or ((f(x[0])*d2(x[0])/sqr(f1(x[0]))) >= 1) then
          continue;
       j:=1;
       t:=0;
       repeat
          if (f1(x[0]) = 0) then
          begin
             t:=50;
             break;
          end;
          x1:=x[0]-f(x[0])/f1(x[0]);
          if (abs(x1-x[0])<h) then
             t:=10;
          x[0]:=x1;
          j:=j+1;
       until (t=10);
       if (t=50) then
          continue;
       if (abs(x[0])>10*h) then
       begin
          t:=20;
          for k:=1 to 100 do
             if (abs(x[k]-x[0])<h) then
               t:=30;
          if (t=20) then
          begin
             writeln('X = ',x[0]:10:9,' ',j);
             x[r]:=x[0];
             r:=r+1;
          end;
       end
       else
       begin
          if (w<>40) then
             writeln('X = ',abs(x[0]):10:9,' ',j);
             w:=40;
       end;
    end;
 readln;
 end.



