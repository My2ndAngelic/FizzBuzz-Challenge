//Print all the prime of a number, modified from previous level.
program FizzBuzzL5C1;
uses crt, sysutils;
var i, n: qword; // Assuming you are not a good person
    o: string;

function CheckPrime2(number:qword): boolean; // Check prime
var k: qword;
begin
   CheckPrime2:=TRUE;
   for k:= 2 to (number div 2) do
     begin
       if (number mod k = 0) then
         begin
           CheckPrime2:=FALSE;
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
      if CheckPrime2(i) = TRUE then
        begin
          o:= o + 'Prime';
          writeln(o);
        end;
    end;
  readln;
end.
