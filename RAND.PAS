 program random_walk;
 var
    x,y,i,j,r:longint;
 begin
 randomize;
 for j :=1 to 10 do
 begin
   x:=0;
   y:=0;
    for i:=1 to 5000  do
    begin
       r:=random(4);
       if r=0 then x:=x+1;
       if r=1 then x:=x-1;
       if r=2 then y:=y+1;
       if r=3 then y:=y-1;
    end;
    writeln(' x = ',x,' y = ',y);
  end;
    readln;
 end.



