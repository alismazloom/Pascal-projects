 unit Montana;
 interface
 uses crt;
 Function Monte_Carlo:word;
 implementation
 Function Monte_Carlo:word;
 var
   l,k:Byte;
   C:Word;
   T1:Array[1..50] of word;
   Table:Array[1..50] of Real;
   Begin
     for l:=1 to k do
       Read(T1[l]);
     if(Ch='y') then
       for l:=1 to k do
         Table[l]:=1/k
     else
     begin
       Write('Enter Probabilities:');
       for l:=1 to k do
         Read(Table[l]);
     end;
     for l:=1 to k do
       Table[l]:=1000*Table[l]+Table[l-1];
     c:=random(1000)+1;
     for l:=1 to k do
       if(c <= Table[l]) then
       begin
         b:=T1[l];
         Break;
       end;
     Monte_Carlo:=b;
 end;
