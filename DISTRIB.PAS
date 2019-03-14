 unit Distrib;
 interface
 var
   z:real;
 function Exponential(x:real):real;
 function Poisson(L:real):byte;
 procedure Normal(M,S:real);
 implementation
 function Exponential(x:real):real;
 var
   y:real;
 begin
    y:=-(1/x)*ln(random);
    Exponential:=y;
 end;
 procedure Normal(M,S:real);
 var
    y1,y2:real;
 begin
   z:=0;
    repeat
      y1:=Exponential(1);
      y2:=Exponential(1);
      z:=y2-sqr(y1-1)/2;
    until (z > 0);
    if (random < 0.5) then
      z:=-z;
    z:=M+S*z;
 end;
 function Poisson(L:real):byte;
 var
    p:real;
    m:byte;
 begin
   m:=0;
   p:=1;
   while (true) do
   begin
      p:=p * random;
      if (p < exp(-l)) then
         break;
      m:=m+1;
   end;
   poisson:=m;
 end;
 begin
 end.


