
<?php 

echo "Hello, World!";

// PART 1: Should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)?

  // Both conditional and unconditional exits are possible to implement in PHP. A simple conditional exit is as follows.
print( "\nCONDITIONAL EXIT \nCountdown from 10:" );
  $x = 9;
  while( $x >= 0 ){
    print_r("\n");
    print_r($x);
    $x--;
  }

// However, conditional mechanism is NOT an integral part of the exit in PHP. One can use "break" statement. There are two types of break statements. First one is the unlabeled one.
print( "\n\nUNCONDITIONAL UNLABELED EXIT \nCounting up to 10:" );
for( $i = 0; $i < 10; $i++ ) {
  if( $i == 5 ) {
    break;
  }
  print_r("\n");
  print_r($i);
}
  // The loop is exited once i becomes 5, which causes to stop counting at after 4.

// In the case for nested for loops, "break" statement exits the innermost for loop.
print( "\n\nUNCONDITIONAL UNLABELED EXIT \nNested for loops and brake usage: " );
$x = 0;
for ( $i = 0; $i < 10; $i++ ) {
  for ( $j = 0; $j < 10; $j++ ) {
    $x = 1;
    break;
  }
  $x = 2;
}
print( "\nx = " );
print( $x ); 
// x is 2 at the end


// PART 2: Should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)?

// We can specify the number of layers to exit, too, with "break" statement. In the following example, the program goes two layers up when j equals 1. This results in continuing with the first loop when we encounter the "break" statement.
print( "\n\nUNCONDITIONAL LABELED EXIT WITH BREAK \nNested for loops and brake usage with specifying layers (2): " );
for( $i = 0; $i < 3; $i++ ) {
  print( "\n\tIn the first loop i = " );
  print( $i );
  for( $j = 0; $j < 3; $j++ ) {
    print( "\n\t\tIn the second loop j = " );
    print( $j );
    for( $k = 0; $k < 3; $k++ ) {
      if( $j == 1 ) {
        break 2;
      }
      print( "\n\t\t\tIn the third loop k = " );
      print( $k );
    } 
  }
}

// But in this case break statement goes only one layer up, which causes the program to only skip the print statements of third loop when j equals 1.
print( "\n\nUNCONDITIONAL LABELED EXIT WITH BREAK \nNested for loops and brake usage with specifying layers (1): " );
for( $i = 0; $i < 3; $i++ ) {
  print( "\n\tIn the first loop i = " );
  print( $i );
  for( $j = 0; $j < 3; $j++ ) {
    print( "\n\t\tIn the second loop j = " );
    print( $j );
    for( $k = 0; $k < 3; $k++ ) {
      if( $j == 1 ) {
        break 1;
      }
      print( "\n\t\t\tIn the third loop k = " );
      print( $k );
    } 
  }
}

// There is also the "goto" statement in PHP. 
print( "\n\nUNCONDITIONAL LABELED EXIT WITH GOTO \nNested for loops and goto usage: " );
$x = 0;
for( $i = 0; $i < 3; $i++ ) {
  $x = 1;
  for( $j = 0; $j < 3; $j++ ) {
    goto exitLabel;
  } 
  $x = 2;
}
exitLabel:
print( "\nx = " );
print($x); // x prints 1 since it has only executed the outer loop's body

?>