//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Mehdi Yembou on 05/12/2015.
//  Copyright © 2015 Mehdi Yembou. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    
    @IBOutlet weak var nameLbl: UILabel!
    
    
    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name
    }

}
