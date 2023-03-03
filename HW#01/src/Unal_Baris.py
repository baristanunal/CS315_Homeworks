
#****************************************************************************

#CS315 HW01 - ASSOCIATIVE ARRAYS - PYTHON
#Barış Tan Ünal
#22003617
#Section: 03

#****************************************************************************


# 1. Initialize
print( "\n\n", "1. Initialize" );
books = {
  "Frankenstein": { "author": "Mary Shelley", "availability": True },
  "Utopia": { "author": "Thomas More", "availability": False },
  "The Illiad": { "author": "Homer", "availability": True },
  "The Tempest": { "author": "Shakespeare", "availability": False }
}
for x in books:
    print( "\n", x )
    for y in books[x]:
        print( y, ":" ,books[x][y] )

# 2. Get the value for a given key
print( "\n\n", "2. Get the value for a given key" );
print( books[ "Utopia" ] );

# 3. Add a new element
print( "\n\n", "3. Add a new element" );
books[ "The Strange Case of Dr. Jekyll and Mr. Hyde" ] = { "author": "R. L. Stevenson", "availability": False  }
for x in books:
    print( "\n", x )
    for y in books[x]:
        print( y, ":" ,books[x][y] )

# 4. Remove an element
print( "\n\n", "4. Remove an element" );
del books[ "The Tempest" ];
for x in books:
    print( "\n", x )
    for y in books[x]:
        print( y, ":" ,books[x][y] )

# 5. Modify the value of an existing element
print( "\n\n", "5. Modify the value of an existing element" );
books[ "Frankenstein" ] = { "author": "Mary Shelley", "availability": False };
for x in books:
    print( "\n", x )
    for y in books[x]:
        print( y, ":" ,books[x][y] )

# 6. Search for the existence of a key
print( "\n\n", "6. Search for the existence of a key" );
def checkKey( dict, key ):
    if key in dict.keys():
        print( key, " exists.")
    else:
        print( key, " does not exist.")
checkKey( books, "1984" )
checkKey( books, "Frankenstein" )

# 7. Search for the existence of a value
print( "\n\n", "7. Search for the existence of a value" )
def checkValue( dict, value ):
    if value in dict.values():
        print( value, " exists.")
    else:
        print( value, " does not exist.")
checkValue( books, { "author": "Mary Shelley", "availability": True } )
checkValue( books, { "author": "Homer", "availability": True }, )

# 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
print( "\n\n", "8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair" )
def foo( dict ):
  for i in dict:
    print( "\n", i )
    for j in dict[i]:
        print( j, ":" ,dict[i][j] )

foo( books )