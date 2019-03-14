 {$N+}
 uses Crt, Graph;
 procedure drawing;
 procedure putputy(x,y:real;c:byte);
 begin
    x:=320+32*x;
    y:=240-32*y;
    putpixel(round(x),round(y),c);
 end;
 function pow(a:extended;b:byte):extended;
 var
    c:extended;
 begin
    if a=0 then
      exit;
    if a>0 then
      c:=exp(b*ln(a))
    else
      c:=exp(b*ln(-a));
    pow:=c;
 end;
 var
    i: Integer;
    x:real;
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
    x := -7;
     while (x < 7) do
     begin
        putputy(x,(1/sqrt(2*pi))*exp(-x*x/2),15);
        x := x+0.001;
     end;
 end;
 var
    Gd, Gm:integer;
 begin
    Gd := Detect;
    InitGraph(Gd, Gm, ' ');
    Drawing;
    readln;
    CloseGraph;
 end.




