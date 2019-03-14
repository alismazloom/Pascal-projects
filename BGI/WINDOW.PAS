 unit window;
 interface uses graph;
 var X,A,B:integer;
 procedure twindow(X1,Y1,X2,Y2:integer;Text:string);
 implementation
 procedure rising(X1,Y1,X2,Y2:integer;col1,col2,col3:byte);
 begin setcolor(Col1);
 line(X1,Y1,X2,Y1); line(X1,Y1,X1,Y2);
 setfillstyle(1,Col2);bar(X1+1,Y1+1,X2-1,Y2-1);setcolor(Col3);
 line(X1,Y2,X2,Y2); line(X2,Y1,X2,Y2);
 end;
 procedure deepening(X1,Y1,X2,Y2:integer;Col1,Col2,Col3:byte);
 begin setcolor(Col1);
 line(X1,Y2,X2,Y2);line(X2,Y1,X2,Y2);
 setfillstyle(1,Col2);bar(X1+1,Y1+1,X2-1,Y2-1);setcolor(Col3);
 line(X1,Y1,X2,Y1);line(X1,Y1,X1,Y2);
 end;
 procedure twindow(X1,Y1,X2,Y2:integer;Text:string);
 begin rising(X1,Y1,X2,Y2,15,7,8);
 deepening(X1+2,Y1+2,X2-2,Y2-2,15,0,8);
 rising(X1+4,Y1+4,X2-4,Y1+28,9,1,8);setcolor(3);
 settextstyle(1,HorizDir,1);
 X:=(((X2-X1) div 2)-(textwidth(Text)div 2))+X1;outtextxy(X,Y1+10,Text);
 settextstyle(0,HorizDir,1);setcolor(15);end;
 begin A:=detect;initgraph(A,B,'');
 end.

