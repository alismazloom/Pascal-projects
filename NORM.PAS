 unit Norm;
 interface
 var
   z1,z2:real;
 procedure Normal;
 implementation
 procedure Normal;
 var
    r1,r2,v1,v2,h:real;
 begin
   z1:=0;
   z2:=0;
   repeat
     r1:=random;
     r2:=random;
     v1:=-1+2*r1;
     v2:=-1+2*r2;
     h:=sqr(v1)+sqr(v2);
   until(h<1);
   z1:=v1*sqrt(-2*ln(h)/h);
   z2:=v2*sqrt(-2*ln(h)/h);
 end;
 begin 
 end.
