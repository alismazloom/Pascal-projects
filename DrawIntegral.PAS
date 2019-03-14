 uses Graph;
 var
    x,f:real;
 procedure drawing;
 var
    i: Integer;
 begin
    setcolor(2);
    line(320,0,320,640);
    line(80,240,560,240);
    for i:=0 to 14 do
    begin
       PutPixel(96+i*32,239, 15);
       PutPixel(96+i*32,241, 15);
       PutPixel(321,16+32*i , 15);
       PutPixel(319,16+32*i , 15);
    end;
 end;
 procedure putputy(x,y:real;c:byte);
 begin
    x:=320+32*x;
    y:=240-32*y;
    putpixel(round(x),round(y),c);
 end;
 function Integral(a,b:real;n:longint):real;
 var
    c:real;
    i:longint;
 begin
    b:=(b-a)/n;
    c:=0;
    for i:=1 to n do
    begin
       c:=c+(x*x);
       a:=a+b;
    end;
    c:=b*c;
    Integral:=c;
 end;
 var
    Gd, Gm:integer;
 begin
    Gd := Detect;
    InitGraph(Gd, Gm, '');
    Drawing;
    x:=0;
    f:=0;
    while (x < 7) do
    begin
       putputy(x,f,15);
       f:=f+integral(x,x+0.001,10);
       x:=x+0.001;
    end;
    x:=0;
    f:=0;
    while (x > -7) do
    begin
       putputy(x,f,15);
       f:=f+integral(x,x-0.001,10);
       x:=x-0.001;
    end;
    Readln;
    CloseGraph;
 end.
