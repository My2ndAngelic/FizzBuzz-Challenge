program FizzBuzz;
uses crt, sysutils;

var i, n: integer;
    o: string;

begin
  o:='';
  write('Please enter n: ');
  readln(n);
  for i:= 1 to n do
    begin
      o:= IntToStr(i) + ' ';
      if i mod 3 = 0 then
        o:= o+'Fizz';
      if i mod 5 = 0 then
        o:= o+'Buzz';
      writeln(o);
    end;
  readln;
end.
