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
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _baseAttack: String!
    private var _nextEvolutionTxt: String!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    var description: String {
        return _description
    }
    
    var type: String {
        return _type
    }
    
    var defense: String {
        return _defense
    }
    
    var height: String {
        return _height
    }
    
    var weight: String {
     return _weight
    }
    
    var baseAttack: String {
        return _baseAttack
    }
    
    var nextEvolutionTxt: String {
        return _nextEvolutionTxt
    }
    
    init(name: String, pokedexId: Int, description: String, type: String, defense: String, height: String, weight: String, baseAttack: String, nextEvolutionTxt: String) {
        self._name = name
        self._pokedexId = pokedexId
        self._description = description
        self._type = type
        self._defense = defense
        self._height = height
        self._weight = weight
        self._baseAttack = baseAttack
        self._nextEvolutionTxt = nextEvolutionTxt
    }
    
    
}

