
// PART 1: NESTED SUBPROGRAM DEFINITIONS
void main() {
  
  print( "\nPART 1: NESTED SUBPROGRAM DEFINITIONS" );
  
  // Outer subprogram.
  double cylinderSurfaceArea( double radius, double height ){
    
    // Inner subprogram #1 defined inside "cylinderSurfaceArea".
    // It is possible to define nested subprograms in Dart.
    double cylinderLateralArea( double r, double h ){
      return 2 * (3.14159) * r * h;
    }
    
    // Inner subprogram #2 defined inside "cylinderSurfaceArea".
    double power( double x, int p ){
      if( p == 0 ){
        return 1;
      }
      else{
        return x * power( x, p - 1 );
      }
    }
    return cylinderLateralArea( radius, height ) + 2 * (3.14159) * power( radius, 2 );
  } 
  
  double r = 5;
  double h = 3;
  double a = cylinderSurfaceArea( r, h );  
  print( "Surface area of a cylinder with radius $r and height $h is: $a");
  print( "\n---------------------------------------------------------" );


  // PART 2: LOCAL VARIABLE SCOPING
  print( "PART 2: LOCAL VARIABLE SCOPING" );
  void foo1( int a ){
    int x = 3;
    
    void foo2( int b ) {
      int y = 2;
      // All of the variables b, x, and y are visible from here, so no compilation error.
      int i = b * x * y;
      print( "Inside foo2, b * x * y = $i" );
    }
    // Prints 5 * 3 * 2 = 30.
    foo2( 5 );
    
    // Gives compilation error because variable y is out of scope.
    // return a * y;  
    
    // Does not give a compilation error because both a and x is visible from here.
    int i = a * x;
    print( "In foo1, a * x = $i" );
  }
  
  // Prints 4 * 3 = 12.
  foo1( 4 );
  
  
  // PART 3: PARAMETER PASSING METHODS
  
  print( "\n---------------------------------------------------------" );
  print( "PART 3: PARAMETER PASSING METHODS" );
  
  // Pass by value.
  print( "\tPass by value:" );
  int global1 = 5;
  void multiplyByThree( int x ){
    x = x * 3;
    print( "After altering passed parameter inside the subprogram, x = $x" );
  }
  print( "Before calling multiplyByThree, global1 = $global1" );
  multiplyByThree( global1 );
  print( "After calling multiplyByThree, global1 = $global1" );
  // Global1 variable is printed as 5 after calling multiplyByThree.
  // Therefore, we can conclude that default parameter passing method of Dart is pass by value.
  
  // When a list is passed to a subprogram, it acts like pass by reference.
  // However, it is still not pass by reference, one can only modify it, but cannot assign a whole different list.
  print( "\tPassing lists (acts like pass by reference):" );
  void alterList( List<int> evenNumbers ){
    evenNumbers = [ 6, 8, 10 ]; 
  }
  void addToList( List<int> evenNumbers ){
    evenNumbers.add( 6 );
  }
  List<int> evenNumbers = [ 0, 2, 4 ];
  print( evenNumbers );
  alterList( evenNumbers );
  print( evenNumbers );
  
  addToList( evenNumbers );
  print( evenNumbers );
  
  
  // PART 4: KEYWORDS AND DEFAULT PARAMETERS
  print( "\n---------------------------------------------------------" );
  print( "PART 4: KEYWORDS AND DEFAULT PARAMETERS" );
  
  print( "\tReqiures parameters:" );
  void funcRequiredParam( int a1, int a2, int a3){
    print( "In funcRequiredParam, a1 = $a1, a2 = $a2, a3 = $a3" );
  }
  int i = 1;
  int j = 2;
  int k = 3;
  // We must pass all parameters for reqiured parameters, if we do not program gives a compile time error.
  funcRequiredParam( i, j, k );
  
  print( "\tPositional optional parameters:" );
  void funcPositionalParam( int a1, int a2, [int b1 = 5, int b2 = 20]){
    print( "In funcPositionalParam, a1 = $a1, a2 = $a2, b1 = $b1, b2 = $b2" );
  }
  i = 3;
  j = 4;
  // We must pass values for requires parameters but positional parameters are optional.
  funcPositionalParam( i, j );
  // If we want to pass a value for the b2 which is the second positional parameter, we must pass a value for the previous ones too.
  funcPositionalParam( i, j, 10 );
  funcPositionalParam( i, j, 10, 100 );
  
  print( "\tNamed optional parameters:" );
  void funcNamedParam( int a1, { int b1 = 5, int b2 = 7 } ){
    print( "In funcDefaultParam, a1 = $a1, b1 = $b1, b2 = $b2" );
  }
  
  i = 3;
  // We can pass a value for a default parameter if we want.
  // Unlike positional parameter passing, we can pass a value that we want to any parameter without passing a value for previous parameters.
  funcNamedParam( i, b2: 9 );
  
  // But it is also possible not to pass a value for a default parameter.
  // In this case its default value of a1 is used.
  funcNamedParam( i );
  
  // PART 5: CLOSURES
  print( "\n---------------------------------------------------------" );
  print( "PART 5: CLOSURES" );
  
  Function makeMultiplier( int a ){
    return (b) {
      return a * b;
    };
  }
  
  // We can create a variable which takes an input as a parameter.
  // Therefore, we can create function-like structures which we can specialize at runtime.
  
  // Here we create a "multiply by 2" closure.
  var mulBy2 = makeMultiplier(2);
  // Here we create a "multiply by 3" closure.
  var mulBy3 = makeMultiplier(3);
  
  // It can take parameters like such.
  int x = mulBy2(5);
  int y = mulBy3(10); 
  print( "Multiply 5 by 2: $x" );
  print( "Multiply 10 by 3: $y" );
  
}





