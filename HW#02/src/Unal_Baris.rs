fn main() {

  // PART 1: Should the conditional mechanism be an integral part of the exit (conditional or unconditional exit)?

  // Both conditional and unconditional exits are possible to implement in Rust. A simple conditional exit is as follows.
  println!( "\nCONDITIONAL EXIT \nCountdown from 10:" );
  let mut x = 9;
  while x >= 0 {
    println!( "x = {}", x );
    x = x - 1;
  }

  // However, conditional mechanism is NOT an integral part of the exit in Rust. One can use "break" statement. There are two types of break statements. First one is the unlabeled one.
  println!( "\nUNCONDITIONAL UNLABELED EXIT \nCounting up to 10:" );
  for x in 1..10 {
    if x > 4 {
        break;
    }
    println!( "x = {}", x );
  }
  // The loop is exited once x becomes 5, which causes to stop counting at after 4.

  // In the case for nested for loops, "break" statement exits the innermost for loop.
  println!( "\n\nUNCONDITIONAL UNLABELED EXIT \nNested for loops and brake usage: " );
  let mut x = 0;
  for _i in 1..10 {
    for _j in 1..10 {
      x = 1;
      break;
    }
    x = 2;
  }
  println!( "x = {}", x );

// x is 2 at the end


// PART 2: Should only one loop body be exited or can enclosing loops also be exited (labeled or unlabeled exit)?

// The second option to use the "break" statement is to state a label which points a line of code to continue executing.
println!( "\nUNCONDITIONAL LABELED EXIT \nThree nested loops with break statement: " );
  for i in 0..3 {
    println!( "Inside first loop i = {}", i );
    'loop1:
    for j in 0..3 {
      println!( "\tInside second loop j = {}", j );
      for k in 0..3 {
        if j > 1 {
          break 'loop1;
          // exits the second loop and continues execution of the first loop's body
        }
        println!( "\t\tInside third loop k = {}", k );
      }
    }
  }

// Also there is an unlabeled 'continue' statement in Rust. It skips the current execution of the loop body and continues with the next iteration. Unlabeled version of 'continue' skips the current execution of the innermost loop.
println!( "\nUNCONDITIONAL UNLABELED CONTINUE \nTwo nested loops: " );
  for x in 0..5 {
    for y in 0..5 {
        if y % 2 != 0 { 
          continue; 
        } // skips the execution of the inner loop
        println!("x: {}, y: {}", x, y);
    }
  } // this loop prints all of the x's but only even y's


  // The last one is the labeled continue statement where one can manipulate which loop to skip the iteration of.
  println!( "\nUNCONDITIONAL LABELED CONTINUE \nTwo nested loops where the program prints all of the even number combinations for two numbers up to 10: " );
  'loopOuter: for x in 0..10 {
    'loopInner: for y in 0..10 {
        if x % 2 != 0 { 
          continue 'loopOuter; 
        } // skips the execution of the outer loop
        if y % 2 != 0 { 
          continue 'loopInner; 
        } // skips the execution of the inner loop
        println!("x: {}, y: {}", x, y);
    }
  } // this loops prints only the even x's and event y's
  
  
}

