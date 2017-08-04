//Help: This will export OrangeBuzz
program FizzBuzzL3;
uses crt, sysutils;
var i, n: qword;
    o: string;
//------------//
function Check3Div(val3:integer): string; // Check division 3 then add Fizz
begin
  if (val3 mod 3 = 0) then
    Check3Div:= 'Fizz'
  else Check3Div:= '';
end;

function Check5Div(val5:integer): string; // Check division 5 then add Buzz
begin
  if (val5 mod 5 = 0) then
    Check5Div:= 'Buzz'
  else Check5Div:= '';
end;

function Check6Div(val6:integer): string; // Check division 7 then add Banana
begin
  if (val6 mod 6 = 0) then
    Check6Div:= 'Orange'
  else Check6Div:= '';
end;
//------------//

//------
begin
  clrscr;
  o:='';
  write('Please enter n: ');
  readln(n);
  for i:= 1 to n do
    begin
     o:= o + Check6Div(i);
    if (o = '') then o:= o + Check3Div(i);
     o:= o + Check5Div(i);
    if (o = '') then o:= IntToStr(i);
    writeln(o);
    o:= '';
    end;
  readln;
end.
--------//
