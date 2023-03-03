
# PART 1: Should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)?

# Both conditional and unconditional exits are possible to implement in Python. A simple conditional exit is as follows.
print("\nPART 1 \nCONDITIONAL EXIT \nPowers of two that have two digits at maximum:")
x = 1
# Loop body is executed until the condition does not hold which happens when x equals 128 for the first time.
while x < 100:
  print(x)
  x = x * 2

# However, conditional mechanism is NOT an integral part of the exit in Python. One can use "break" statement which exits the innermost loop body.
print( "\nUNCONDITIONAL EXIT" )
x = 1
print( "Before entering the loop, x = " + str(x) )
while x < 50:
  x = x + 1
  print( "Inside the loop after incrementing, x = " + str(x) )
  break
  x = x * 3
  print( "Inside the loop after multiplying by 3, x = " + x )
print( "After exiting the loop, x = " + str(x) )
# The loop body would be executed for 4 times if there was no "break" statement but it exits the loop immediately without any conditions when the line with "break" is executed.


# PART 2: Should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)?
  
# There is no "goto" statement in Python. Instead, there is a "break" statement as a unconditional unlabeled exit which exits the innermost loop in nested loop structures. Unlike Java, one CANNOT directly perform a unconditional labeled exit with "break". An example of the usage of "break" is given below.
print( "\nPART 2 \nThe positive composite numbers between 1 and 30 exclusive: " )
for i in range (2,10,1):
  for j in range( 2, 10, 1 ):
    if( ( i*j > 30 ) or ( i*j == 2 ) ):
      break
    print( str(i) + " * " + str(j) + " = " + str(i*j) )
# As one can see, when i*j value exceeds 30, the inner loop is exited and the outer loop continues to iterate and execute its body. If the outer loop was meant to be exited, then the multiplications after 4*7=28 would not have been printed at all. But it continues with 5*2=10 which proves that "break" only exits one loop body but not the enclosing loops.

# There is also a "continue" statement which stops the current execution of the body of the loop and continues to the next iteration if the condition of the loop still holds.
print( "\nOne digit odd numbers except 5 (with continue): " )
oddNumbers = range( 1, 10, 2)
for i in oddNumbers:
  if( i == 5 ):
    continue
  print(i)

# But "break" statement would have terminated the loop entirely without continuing with the next iterations, which would not give the promised result in the print statement.
print( "\nOne digit odd numbers except 5 (with break): " )
oddNumbers = range( 1, 10, 2)
for i in oddNumbers:
  if( i == 5 ):
    break
  print(i)

  


