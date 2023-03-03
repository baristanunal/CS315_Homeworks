
--[[
****************************************************************************

CS315 HW01 - ASSOCIATIVE ARRAYS - LUA
Barış Tan Ünal
22003617
Section: 03

****************************************************************************
--]]

print("Hello, world!")

-- 1. Initialize
print "\n";
movieRatings = {};
movieRatings[ "Pulp Fiction" ] = 8;
movieRatings[ "The Green Mile" ] = 2;
movieRatings[ "Top Gun" ] = 7;
for movie, rating in pairs( movieRatings ) do
  print( movie, ": ", rating ); 
end

-- 2. Get the value for a given key
print "\n";
print( "- Rating of Top Gun: ", movieRatings[ "Top Gun" ] );

-- 3. Add a new element
print "\n";
movieRatings[ "Rear Window" ] = 10;
for movie, rating in pairs( movieRatings ) do
  print( movie, ": ", rating ); 
end

-- 4. Remove an element
print "\n";
movieRatings[ "Pulp Fiction" ] = nil;
for movie, rating in pairs( movieRatings ) do
  print( movie, ": ", rating ); 
end

-- 5. Modify the value of an existing element
print "\n";
movieRatings[ "The Green Mile" ] = 1;
for movie, rating in pairs( movieRatings ) do
  print( movie, ": ", rating ); 
end

-- 6. Search for the existence of a key
print "\n";
function keyExists( table, key )
  for movie, rating in pairs( table ) do
      if movie == key then return true; end
    end
  return false
end
print ( "Existence of Pulp Fiction: ", keyExists( movieRatings, "Pulp Fiction" ) );
print ( "Existence of Rear Window: ",keyExists( movieRatings, "Rear Window" ) );

-- 7. Search for the existence of a value
print "\n";
function valueExists( table, value )
  for movie, rating in pairs( table ) do
      if rating == value then return true; end
    end
  return false
end
print ( "Existence of a movie with 10/10 rating: ", valueExists( movieRatings, 10 ) );
print ( "Existence of a movie with 5/10 rating: ", valueExists( movieRatings, 5 ) );

-- 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
print "\n";
function foo( table ) 
    for movie, rating in pairs( table ) do
      print( movie, ": ", rating ); 
    end
end
foo( movieRatings );

