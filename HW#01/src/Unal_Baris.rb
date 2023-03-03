=begin
****************************************************************************

CS315 HW01 - ASSOCIATIVE ARRAYS - RUBY
Barış Tan Ünal
22003617
Section: 03

****************************************************************************
=end

puts 'Hello, world!'

# 1. Initialize
fastestLaps = Array.new;

fastestLaps = { 'Deniz' => 46.5, 'Bengi' => 43.9, 'Arda' => 47.1, 'Enes' => 48.6 };
puts fastestLaps;

# 2. Get the value for a given key
puts "Bengi's fastest lap is " + fastestLaps['Bengi'].to_s();

# 3. Add a new element
fastestLaps['Almila'] = 39.5;

# 4. Remove an element
fastestLaps.delete( 'Deniz' );
puts fastestLaps;

# 5. Modify the value of an existing element
fastestLaps['Arda'] = 45.2;
puts fastestLaps;

# 6. Search for the existence of a key
puts fastestLaps.include?( 'Almila' );
puts fastestLaps.include?( 'Bora' );

# 7. Search for the existence of a value
puts fastestLaps.has_value?( 45.2 );
puts fastestLaps.has_value?( 30.7 );

# 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
def foo( laps ) 
  laps.each do |x| 
    puts x;
  end
end
  foo (fastestLaps);
