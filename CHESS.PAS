program chess;
 uses Crt,Graph;
 var
  comp:Array [1..8,1..8] of integer;
  text:string;
  test:boolean;
  ch:char;
  x,y,a,b:integer;
  Gd ,Gm ,c:integer;
  procedure choice(ch:char);
  begin
   if ch=#49 then test:=(abs(x-a)<2)and(abs(y-b)<2);
   if ch=#50 then test:=(abs(x-a)=abs(y-b))or(x=a)or(y=b);
   if ch=#51 then test:=(x=a)or(y=b);
   if ch=#52 then test:=abs(x-a)=abs(y-b);
   if ch=#53 then test:=sqr(x-a)+sqr(y-b)=5;
  end;
 begin
  Gd := Detect;
  InitGraph(Gd ,Gm ,' ');
    for y:= 0 to 8 do
   for x:=0 to 8 do
    begin
    line(120+50*x,50,120+50*x,450);
    line(120,50+50*x,520,50+50*x);
   end;
  setcolor(0);
  repeat
  ch:=readkey;
  until (ord(ch)>48)and(ord(ch)<54);
  for b:= 1 to 8 do
   for a:=1 to 8 do
    begin
    for y:= 1 to 8 do
     for x:=1 to 8 do
     begin
  setfillstyle(1,15);
  choice(ch);
  if test=true then
   begin
   fillellipse(145+50*(x-1),425-50*(y-1),7,7);
  setfillstyle(1,13);
  fillellipse(145+50*(a-1),425-50*(b-1),8,8);
  circle(145+50*(a-1),425-50*(b-1),8);
  end;
  end;
  delay(100);
  setcolor(0);
    for y:= 1 to 8 do
     for x:=1 to 8 do
     begin
     choice(ch);
     if test=true then
     begin
     comp[x,y]:=comp[x,y]+1;
  setfillstyle(1,0);
  fillellipse(145+50*(x-1),425-50*(y-1),7,7);
  fillellipse(145+50*(a-1),425-50*(b-1),8,8);
  circle(145+50*(a-1),425-50*(b-1),8);
   end;
   end;
   end;
 for y:=1 to 8 do
 for x:=1 to 8 do
 begin
 setcolor(15);
 str(comp[x,y],text);
 outtextxy(143+50*(x-1),425-50*(y-1),''+text);
 c:=c+comp[x,y];
 end;
 str(c,text);
 outtextxy(300,30,''+text);
 readln;
end.
