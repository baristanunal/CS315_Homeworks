/*
****************************************************************************

CS315 HW01 - ASSOCIATIVE ARRAYS - DART
Barış Tan Ünal
22003617
Section: 03

****************************************************************************
*/

void main() {
  
  //1. Initialize

  Map grades = {
    'CS202':   'B-',
    'CS224':   'B+',
    'PHYS102': 'C-',
    'HUM112':  'A-',
    'SOC101':  'A',
    'ENG401':  'F'
  };
  print("\nInitiliazed grades:");
  grades.forEach((course, grade) {
    print("$course: $grade");
  });
  
  //2. Get the value for a given key
  print( "The grade of CS202 is: " + grades["CS202"] );
  
  //3. Add a new element
  grades[ "PHYS252" ] = "D+";
  print("\nAdded the grade of PHYS252:");
  grades.forEach((course, grade) {
    print("$course: $grade");
  });
  
  //4. Remove an element
  grades.remove( "HUM112" );
  print("\nDeleted the grade of HUM112:");
  grades.forEach((course, grade) {
    print("$course: $grade");
  });
  
  //5. Modify the value of an existing element
  grades[ "CS202" ] = "C+";
  print("\nModified the grade of CS202:");
  grades.forEach((course, grade) {
    print("$course: $grade");
  });
  
  //6. Search for the existence of a key
  print( "\nAvailability of the grade of ENG401: " + grades.containsKey( "ENG401" ).toString() );
  print( "Availability of the grade of MATH225: " + grades.containsKey( "MATH225" ).toString() );
  
  //7. Search for the existence of a value
  print( "\nAvailability of a lesson with 'F' grade: " + grades.containsValue( "F" ).toString() );
  print( "Availability of a lesson with 'FZ' grade: " + grades.containsValue( "FZ" ).toString() );
  
  //8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
  foo( array ) {
    array.forEach((course, grade) {
      print("$course: $grade");
    });
  }
  print( "\nCalling foo..." );
  foo( grades );
  
}
