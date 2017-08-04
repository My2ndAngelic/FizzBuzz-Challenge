uses crt, sysutils;

function Check3Div: boolean;
begin
  if i mod 3 = 0
    Check3Div:= TRUE
  else Check3Div:= FALSE;
end;

function Check5Div: boolean;
begin
  if i mod 5 = 0
    Check5Div:= TRUE
  else Check5Div:= FALSE;
end;

begin
  o:='';
  write('Please enter n: ');
  readln(n);
  for i:= 1 to n do
    begin
      if Check3Div = TRUE then
        write('Fizz');
      else if check5Div = TRUE then
        write('Buzz');
      else write(i);
      writeln;
    end;
  readln;
end.
