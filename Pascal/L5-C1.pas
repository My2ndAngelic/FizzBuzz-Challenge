//Print all the prime of a number, modified from previous level.
program FizzBuzzL5C1;
uses crt, sysutils;
var i, n: qword; // Assuming you are not a good person
    o: string;

function CheckPrime2(number: qword): boolean; // Check prime
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

function Divisor(number,l:qword): boolean;
begin
  if (number mod l = 0) then
    Divisor:= TRUE
  else Divisor:= FALSE;
end;
//------------//

begin
  clrscr;
  write('Please enter the number: ');
  readln(n);
  o:= IntToStr(n) + ' ';
//  writeln('1 Special');
  if CheckPrime2(n) = TRUE then
    o:= o + '1 ' + IntToStr(n)
  else
    begin
      for i:= 1 to n do
        begin
          if Divisor(n,i) = TRUE then
            o:=o + ' ' + IntToStr(i);
        end;
    end;
  writeln(o);
  readln;
end.
