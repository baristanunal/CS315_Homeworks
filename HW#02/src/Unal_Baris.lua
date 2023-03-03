
print("Hello, world!")

-- PART 1: Should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)?

-- Both conditional and unconditional exits are possible to implement in Lua. A simple conditional exit is as follows.
print( "\nCONDITIONAL EXIT \nCountdown from 10:" )
x = 9;
while( x >= 0 )
do
  print( x );
  x = x - 1;
end

-- However, conditional mechanism is NOT an integral part of the exit in Lua. One can use "break" statement for unconditional unlabeled exit.
print( "\nUNCONDITIONAL UNLABELED EXIT BREAK \nCounting up to 10 interrupted by break:" );
for i = 0, 10, 1 
do
  if i == 5 then break end
  print(i);
end
-- The loop is exited once i becomes 5, which causes to stop counting at after 4.

-- PART 2: Should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)?
-- The "break" statement only exits the innermost loop in Lua.
print( "\nUNCONDITIONAL UNLABELED EXIT \nThree nested loops with break statement: " );
for i = 0, 2, 1 
do
  print( "\tIn the first loop i = ", i );
  for j = 0, 2, 1
  do 
    print( "\t\tIn the second loop j = ", j );
    for k = 0, 2, 1
    do 
      print( "\t\t\tIn the third loop k = ", k );
      if i == 1 then break end
    end
  end 
end
-- Only the third loop was exited when i equals 1.

print( "\nUNCONDITIONAL LABELED EXIT \nNested for loops with a goto statement to illustrate which statement is executed, i.e., which for loop is being exited: " );
x = 0;
for i = 0, 10, 1 do
  for j = 0, 10, 1 do
    goto out
  end
  x = 1;
end
::out::
print( "x = ", x);
-- In the inner loop, the program jumps to the line of the label 'out' and therefore x never becomes 1.

-- In Lua, one can only exit the innermost loop body with "break" statement. There is no way to exit outer loops with "break" statement because there is no labeled "break" statements unlike JavaScript and Dart.
print( "\nUNCONDITIONAL LABELED EXIT WITH GOTO \nThree nested loops with goto statement: " );
i = 0;
while i <= 2 
do
  i = i + 1;
  print( "In the first loop i = ", i );
  j = 0;
  ::exit::
  while j <= 2
  do 
    j = j + 1;
    print( "\tIn the second loop j = ", j );
    k = 0;
    while k <= 2
    do 
      k = k + 1;
      print( "\t\tIn the third loop k = ", k );
      if i == 2 then 
          goto exit 
        end
    end
  end 
end





 