var i, n: integer;
    res: boolean;

begin
  res:= true;
  write('Enter your number: ');
  readln(n);
  for i:= 1 to n do
    begin
      if (i mod 3) = 0 then
        begin
          write('Fizz');
          res:= false;
        end;
      if (i mod 5) = 0 then
        begin
          write('Buzz');
          res:= false;
        end;
      if res=true then
        write(i);
      writeln;
      res:=true;
    end;
end.
