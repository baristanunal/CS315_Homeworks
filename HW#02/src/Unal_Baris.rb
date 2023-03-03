puts 'Hello, Ruby!'

# PART 1: Should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)?

# Both conditional and unconditional exits are possible to implement in Ruby. A simple conditional exit is as follows.
puts( "\nCONDITIONAL EXIT \nCountdown from 10:" );
x = 9
while( x >= 0 ) do
  puts( x )
  x = x - 1
end

# However, conditional mechanism is NOT an integral part of the exit in Dart. One can use "break" statement. There are two types of break statements. First one is the unlabeled one.
puts( "\nUNCONDITIONAL UNLABELED EXIT WITH BREAK \nCounting up to 10:" )
for i in 0..10 do
  if i == 5 then
    break
  end
  puts( i );
end
# The loop is exited once i becomes 5, which causes to stop counting at after 4.

# PART 2: Should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)?

# There is no labelled version of "break", but one can use exceptions to exit the enclosing loops in nested loops.
puts "\nUNCONDITIONAL LABELED EXIT WITH EXCEPTION \nInteger couples in a two layer nested loop."
catch (:exit) do
  4.times do |i|
    4.times do |j|
      throw :exit if i + j >= 5
      puts "i = #{i}, j = #{j}"
    end
  end
end
# The program throws an exception in the inner loop when i+j equals 5 where i = 2 and j = 3. 

# Additionally, Ruby has a "next" statement instead of "continue" in JavaScript and others.
puts "\nUNCONDITIONAL UNLABELED NEXT \nCounting even numbers up to 10 with 'next' statement."
x = 0
while x <= 10
  if x % 2 == 1 then
    x = x + 1
    next
  end
  puts "x = #{x}"
  x = x + 1
end
# This loop does not print odd numbers since it will skip the current iteration when x is odd.





