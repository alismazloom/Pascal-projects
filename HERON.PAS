Program Heron;
  uses crt;
  var
      a,b,c,p,m,s,t : real;
      u,v,w,x,y,z :integer;
  begin
    
    writeln;
        readln(a,b,c);
    p:=a+b+c;
    m:=-(a*a*a*a)-(b*b*b*b)-(c*c*c*c)+(2*a*a*b*b)+(2*a*a*c*c)+(2*b*b*c*c);
    t:=sqrt(m)/4;
    writeln;
    writeln;
    for u:=-10 to 10 do
      for v:=-10 to 10 do
        for w:=-10 to 10 do
          for x:=-10 to 10 do
            for y:=-10 to 10 do
              for z:=-10 to 10 do
             begin
             s:=(u*a*a+v*b*b+w*c*c)*(x*a*a+y*b*b+z*c*c);
  if(s=m) then
             begin
                 writeln(u,'  ',v,'  ',w,'  ',x,'  ',y,'  ',z);

             end;
             end;
   writeln;
   writeln;
   writeln(t:15:2,'  ',m:0:0);
    readkey;
  end.
