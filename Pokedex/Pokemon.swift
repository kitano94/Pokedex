//
//  Pokemon.swift
//  Pokedex
//
//  Created by Mehdi Yembou on 05/12/2015.
//  Copyright © 2015 Mehdi Yembou. All rights reserved.
//

import Foundation

class Pokemon {
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
    }
    
    
}

