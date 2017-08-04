//Find the next prime
program FizzBuzzL4S;
uses crt, sysutils;
var i, n: qword; // Assuming you are
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
