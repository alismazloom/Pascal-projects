   program log;
   uses crt,graph;
   var  a,b,c:real;n,p:integer;ch:char;
   begin
   N:=detect;initgraph(N,P,'');settextstyle(7,horizdir,3);
   setcolor(13);outtextxy(260,150,'1 .');setcolor(15);outtextxy(310,150,'Log');
   setcolor(13);outtextxy(255,200,'2 .');setcolor(15);outtextxy(310,200,'Ln');
   repeat
   ch:=readkey;
   until (ch=#49)or(ch=#50);
   setcolor(0);outtextxy(260,150,'1 .');outtextxy(310,150,'Log');
   outtextxy(255,200,'2 .');outtextxy(310,200,'Ln');setcolor(15);
   settextstyle(8,horizdir,1);
   outtextxy(8,5,'Enter your number please : ');gotoxy(38,2);readln(a);
   if ch=#50 then b:=exp(1) else begin outtextxy(42,37,'Enter your base please :');
   gotoxy(38,4);readln(b);end;c:=ln(a)/ln(b);
   closegraph;
   gotoxy(30,10);if ch=#50 then write('Ln') else write('Log         =          ');
   if ch=#50 then begin gotoxy(33,10); write(a:4:3);n:=round((ln(a)/ln(10)))+38;
   gotoxy(n,10);write(' = ');gotoxy(n+3,10);
   write(c:6:5);end else begin gotoxy(34,9);
   write(a:4:3);end ;gotoxy(34,11);if ch=#49 then begin write(b:4:3);gotoxy(45,10);
   write(c:6:5);end;readkey;
   end.