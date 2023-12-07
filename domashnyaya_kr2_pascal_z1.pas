program mass_1dkr2;
var
  arr:array of integer;
  dl,c,i,min,max,sum:integer;
  begin
    writeln('Введите длину массива: ');
    readln(dl);
    SetLength(arr,dl);
    
    write('Введите элементы массива: ');
    for i:=0 to dl-1 do 
    begin
      readln(c);
      arr[i]:=c;
    end;
    
    {Находим минимальный элемент}
    min := arr[1];
    for i := 0 to dl-1 do
    begin
      if min > arr[i] then 
        min := arr[i];
    end;
    writeln(arr);
    writeln('Минимальный элемент массива: ', min); 
    
    {Находим максимальный элемент}
    max:=arr[1];
    for i := 0 to dl-1 do
    begin
      if max < arr[i] then 
        max := arr[i];
    end;
    writeln('Максимальный элемент массива: ', max);
    
    sum := max+min;
    writeln('Сумма максимального и минимального элементов массива: ', sum); 
  end.