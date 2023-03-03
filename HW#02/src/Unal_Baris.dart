void main() {

  // PART 1: Should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)?

  // Both conditional and unconditional exits are possible to implement in Dart. A simple conditional exit is as follows.
  print( "\nCONDITIONAL EXIT \nCountdown from 10:" );
  var x = 9;
  while( x >= 0 ){
    print(x);
    x--;
  }

  // However, conditional mechanism is NOT an integral part of the exit in Dart. One can use "break" statement. There are two types of break statements. First one is the unlabeled one.
   print( "\nUNCONDITIONAL UNLABELED EXIT \nCounting up to 10:" );
  for( var i = 0; i < 10; i++ ) {
    if( i == 5 ) {
      break;
    }
    print(i);
  }
  // The loop is exited once i becomes 5, which causes to stop counting at after 4.

  
  // PART 2: Should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)?

  // The second option to use the "break" statement is to state a label which points a line of code to continue executing.
  print( "\nUNCONDITIONAL LABELED EXIT \nThree nested loops with break statement: " );
  for( var i = 0; i <= 2; i++ ) {
    print( "Inside first loop i = " + i.toString() );
    loop1:
    for( var j = 0; j <= 2; j++ ) {
      print( "Inside second loop j = " + j.toString() );
      for( var k = 0; k <= 2; k++ ) {
        if( j > 1 ) {
          break loop1;
          // exits the second loop and continues execution of the first loop's body
        }
        print( "Inside third loop k = " + k.toString());
      }
    }
  }
  // When we reach the innermost loop when j==2 i.e, for the third time, the "break" statement is executed and the block which label "loop1" points to i.e, the second loop, is exited. 


    // The "continue" keyword can be used with or without labels. The one without a label is as follows.
  print( "\nUNLABELED CONTINUE \nTwo nested loops with unlabeled continue statement:" );
  for( var i = 0; i <= 3; i++ ) {
    print( "Inside first loop i = " + i.toString() );
    for( var j = 0; j <= 3; j++ ) {
      if( j == 1 ){
        continue;
      }
      print( "Inside second loop j = " + j.toString() );
    }
  }
  // When j==1, continue statement is executed and the program continues to check the condition for the innermost loop of the body that "continue" statement is in and executes the body if the condition holds.

  // A "continue" statement with a label is as follows.
  print( "\nLABELED CONTINUE \nTwo nested loops with labeled continue statement:" );
  loopOuter:
  for( var i = 0; i <= 3; i++ ) {
    print( "Inside first loop i = " + i.toString() );
    for( var j = 0; j <= 3; j++ ) {
      if( j == 1 ){
        continue loopOuter;
      }
      print( "Inside second loop j = " + j.toString() );
    }
  }
  // When j==1, continue statement is executed and the program continues to check the condition for the outer loop since the label "loopOuter" points to that loop. Therefore, we never see j become 1, 2 or 3.
  
}


