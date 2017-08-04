//Help: This will export OrangeBuzz
program FizzBuzzL3;
uses crt, sysutils;
var i, n: qword; // Assuming you are
    C3, C5, C6: boolean;
    o: string;

function Check3Div(val3:integer): boolean; // Check division 3
begin
  if (val3 mod 3 = 0) then
    Check3Div:= TRUE
  else Check3Div:= FALSE;
end;

function Check5Div(val5:integer): boolean; // Check division 5
begin
  if (val5 mod 5 = 0) then
    Check5Div:= TRUE
  else Check5Div:= FALSE;
end;

function Check6Div(val6:integer): boolean; // Check division 6
begin
  if (val6 mod 6 = 0) then
    Check6Div:= TRUE
  else Check6Div:= FALSE;
end;
//------------//

begin
  o:='';
  write('Please enter n: ');
  readln(n);
  for i:= 1 to n do
    begin
// Check condition
      C3:= Check3Div(i);
      C5:= Check5Div(i);
      C6:= Check6Div(i);

      if C3 then
        o:= o + 'Fizz';
      if C5 then
        o:= o + 'Buzz';
      if C6 then
        o:= o + 'Orange';
      if ((leftStr(o,4) = 'Fizz') and (rightStr(o,6) = 'Orange')) = TRUE then
        o:= copy(o,5,(length(o)-4));
      if (o = '') then
        o:= IntToStr(i);

      writeln(o);
      o:= '';
    end;
  readln;
end.
