program str_dkr2;
var 
  s:string;
  l,bcount,scount,i:integer;
  begin
    write('Напечатайте текст: ');
    readln(s);
    
    scount := 0;
    bcount := 0;
    l := length(s);
    
    for i := 1 to l do 
    begin
      if (s[i] in ['А'..'Я', 'а'..'я']) then
        bcount := bcount +1
    end;
    
    for i := 1 to l do 
    begin
      if s[i] = ' ' then 
        scount := scount + 1
    end;
    
    if l > 0 then 
      scount := scount + 1;
    
    writeln('Ваш текст: ', s);
    writeln('Количество букв в тексте: ', bcount);
    writeln('Количество слов в тексте: ', scount);
  end.