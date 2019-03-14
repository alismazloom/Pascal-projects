  Uses crt;
  var
   table:array[0..8,0..8]of integer;
   count,min,i,j,k,l,n,x:integer;
   origin,distination,node:integer;
 Begin
   writeln('Enter first node:');
   readln(node);
   for i:=1 to n do
     Table[i,0]:=i;
   for j:=1 to n do
     Table[0,j]:=j;
   write('Enter the number of nodes:');
   read(n);
   writeln('Enter the data & end them with a negative number');
   for k:=1 to n*n do
   begin
     writeln;
     writeln('Origin?');
     readln(origin);
     if (origin<0) then
       break;
     Writeln('Distination?');
     readln(distination);
     writeln('Weight?');
     read(Table[origin,distination]);
   end;
   i:=node;
   for j:=1 to n do
     Table[j,i]:=0;
   repeat
     min:=0;
     repeat
       j:=j+1;
       if (table[i,j]<>0) then
       Begin
         if (min=0) then
           min:=table[i,j];
         if (table[i,j]<min) then
           min:=table[i,j];
         x:=i;
       end;
     until(j=n);
     for j:=1 to n do
       if (table[i,j]=min) then
       Begin
         count:=count+1;
         writeln('M =',min);
         if (min=0) then exit;
         for i:=1 to n do
           if (i<>x) then
             table[i,j]:=0;
         i:=j;
         break;
       end;
       j:=0;
   for k:= 1 to n do
   begin
      for l:=1 to n do
       write(' ',table[k,l]);
       writeln;
   end;
   writeln;delay(3000);
   until(count = n-1);
   for i:=1 to n do
     for j:=1 to n do
       if (table[i,j]<>0) then
         writeln(i, ' , ' ,j, ' = ' ,table[i,j]);

 end.












