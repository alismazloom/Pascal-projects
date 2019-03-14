  {$N+}
  uses Crt,graph;
  var
    A,B:Extended;
    I : Byte;
    N, P:Integer;
    Text:string;
  begin
     N:=Detect;
     InitGraph(N,P,'');
     repeat
        setfillstyle(1,0);
        bar(0,0,639,480);
        settextstyle(1,HorizDir,1);
        outtextxy(10,9,'Enter a positive number :');
        gotoxy(33,2);
        read(a);
        b:=2;
        str(a:0:0,text);
        n:=trunc(ln(a)/ln(10));
        settextstyle(7,horizdir,1);
        outtextxy(275-10*n,70,''+text);
        outtextxy(80,200,'Wait please . . .');
        i:=1;
        while (b <= sqrt(a)) do
        if (frac(a/b)=0) then
        begin
           str(b:0:0,text);
           outtextxy(313,70+20*i,''+text);
           i:=i+1;
           a:=a/b;
        end
        else
           b:=b+1;
        setcolor(0);
        outtextxy(80,200,'Wait please . . .');
        setcolor(15);
        line(305,77,305,88+20*i);
        outtextxy(313,70,'1');
        str(a:0:0,text);
        outtextxy(313,70+20*i,''+text);
     until (Readkey=#27);
     CloseGraph;
  end.