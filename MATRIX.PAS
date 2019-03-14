 program Matrix;
 uses Crt;
 var
    i,j,m : Byte;
    A : Array[1..50,1..50] of real;
    procedure solve(m:byte);
    var
       B : real;
       n : Byte;
    begin
       write('Enter the matrix :');
       writeln;
       for i:=1 to m do
       begin
          for j:=1 to m+1 do
            read(A[i,j]);
          writeln;
       end;
       for n:=1 to m do
         for i:=1 to m do
         begin
            if i=n then
              i:=i+1;
            if i>m then
              exit;
            B:=A[i,n] / A[n,n];
            for j:=1 to m+1 do
               A[i,j]:=A[i,j]-B*A[n,j];
         end;
     end;
 begin
    repeat
       clrscr;
       writeln;
       write('Enter the number of Equivalents:');
       read(m);
       solve(m);
       for i:=1 to m do
         writeln('x',i,' = ',A[i,m+1] / A[i,i]:10:9);
       writeln;
       writeln('Press any key to Solve another one,');
       writeln('  Or <F10> to Exit.');
       writeln;
       if readkey=#68 then
         exit;
    until keypressed;
 end.


