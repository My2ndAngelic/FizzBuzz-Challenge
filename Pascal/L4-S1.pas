//Find the next prime
program FizzBuzzL4S;
uses crt, sysutils;
var l, n: qword; // Assuming you are

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
  write('Please enter n: ');
  readln(n);
  l:= n + 1;
  repeat
    begin
      CheckPrime2(l);
      l:= l + 1;
    end
  until CheckPrime2(l) = TRUE;
  writeln('The next prime number is: ',l);
  readln;
end.
