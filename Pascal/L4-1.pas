//Help: This will export OrangeBuzz
program FizzBuzzL4;
uses crt, sysutils;
var i, n: qword; // Assuming you are
    o: string;

function CheckPrime1(number:qword): boolean; // Check prime
var k: qword;
begin
   CheckPrime1:=TRUE;
   for k:= 2 to (number-1) do
     begin
       if (number mod k = 0) then
         begin
           CheckPrime1:=FALSE;
           break;
         end;
     end;
end;

//------------//

begin
  o:='';
  write('Please enter n: ');
  readln(n);
  writeln('1 Special');
  for i:= 2 to n do
    begin
// Check condition
      o:= IntToStr(i) + ' ';
      if CheckPrime1(i) = TRUE then
        o:= o + 'Prime'
      else o:= o + 'Composite';
      writeln(o);
    end;
  readln;
end.
