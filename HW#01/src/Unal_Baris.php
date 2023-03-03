/*
****************************************************************************

CS315 HW01 - ASSOCIATIVE ARRAYS - PHP
Barış Tan Ünal
22003617
Section: 03

****************************************************************************
*/

<?php 
  
  echo "Hello, World!";

  // 1. Initialize
  $capitals = array( 
    "Brazil"=>"Brasilia", 
    "Russia"=>"Moscow", 
    "Thailand"=>"Bangkok", 
    "Cuba"=>"Havana", 
    "India"=>"New Delhi",
    "Malaysia"=>"Putrajaya"
  );
  print_r( "\nInitialized 'capitals':\n" );
  print_r( $capitals );
  
  // 2. Get the value for a given key
  print_r( "\nCapital of Cuba is: " ); 
  print_r( $capitals[ "Cuba" ] );
  
  // 3. Add a new element
  $capitals += array("Argentina" => "Buenos Aires");
  print_r( "\n\nAdded Argentina:\n" ); 
  print_r( $capitals );
  
  // 4. Remove an element
  unset( $capitals["Brazil"] );
  print_r( "\nRemoved Brazil:\n" ); 
  print_r( $capitals );
  
  // 5. Modify the value of an existing element
  $capitals[ 'Malaysia' ] = "Kuala Lumpur";
  print_r( "\nUpdated Malaysia:\n" ); 
  print_r( $capitals );
  
  // 6. Search for the existence of a key
  if( array_key_exists( "Russia", $capitals ) ) {
    print_r( "\nRussia exists." );
  }
  else {
    print_r( "\nRussia does not exist." );
  }

  if( array_key_exists( "USA", $capitals ) ) {
    print_r( "\USA exists." );
  }
  else {
    print_r( "\nUSA does not exist." );
  }
  
  // 7. Search for the existence of a value
  if( array_search( "Kuala Lumpur", $capitals ) ) {
    print_r( "\nKuala Lumpur exists." );
  }
  else {
    print_r( "\nKuala Lumpur does not exist." );
  }

  if( array_search( "Budapest", $capitals ) ) {
    print_r( "\nBudapest exists." );
  }
  else {
    print_r( "\nBudapest does not exist." );
  }

  
  // 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair

  function foo( $array ) {
    foreach( $array as $key => $value ) { 
      echo $key . ": " . $value . "\n"; 
    } 
  }
  print_r( "\n\nCalling foo...\n" );
  foo( $capitals );

?>