
/*
****************************************************************************

CS315 HW01 - ASSOCIATIVE ARRAYS - RUST
Barış Tan Ünal
22003617
Section: 03

****************************************************************************
*/

use std::collections::HashMap;

fn main() {
    println!("Euroleage Players Associative Array");
    
    // 1. Initialize
    let mut euroleague_players = HashMap::new();
    
    euroleague_players.insert(
        "Marko Guduric", "Fenerbahce"
    );
    euroleague_players.insert(
        "Mike James", "Monaco"
    );
    euroleague_players.insert(
        "Walter Tavares", "Real Madrid"
    );
    
    // 2. Get the value for a given key
    println!("Marko Guduric plays for: {}", euroleague_players["Marko Guduric"]);
    
    // 3. Add a new element
    euroleague_players.insert( "Will Clyburn", "CSKA Moscow" );
    
    // 4. Remove an element
    euroleague_players.remove( "Walter Tavares" );
    
     for (key, value) in &euroleague_players {
        println!( "{}: {}", key, value );
    }
    
    // 5. Modify the value of an existing element
    euroleague_players.insert( "Will Clyburn", "Anadolu Efes" );
    
    for (key, value) in &euroleague_players {
        println!( "{}: {}", key, value );
    }
    
    // 6. Search for the existence of a key
    if euroleague_players.contains_key("Mike James") {
        println!("Mike James plays for a team in Euroleague.");
    }
    
    // 7. Search for the existence of a value
    let team_to_find = "Fenerbahce";
    for (_player, team) in &euroleague_players {
        if *team == team_to_find {
            println!("There is a player that plays for Fenerbahce.");
        }
    }
    
    
    // 8. Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
    
    fn foo ( arr: &mut HashMap<&str, &str> ) {
        for ( player, team ) in arr {ß
            println!( "{}: {}", player, team );
        }
    }
    
    foo ( &mut euroleague_players);
}