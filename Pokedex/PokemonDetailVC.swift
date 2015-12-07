//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Mehdi Yembou on 05/12/2015.
//  Copyright © 2015 Mehdi Yembou. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexIdLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseAttackLbl: UILabel!
    @IBOutlet weak var nextEvoLbl: UILabel!
    @IBOutlet weak var evo1Img: UIImageView!
    @IBOutlet weak var evo2Img: UIImageView!
    
    var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name
        let img = UIImage(named: "\(pokemon.pokedexId)")
        mainImg.image = img
        evo1Img.image = img
        
        pokemon.downloadPokemonDetails { () -> () in
            self.updateUI()
        }
    }
    
    // MARK: Functions
    
    func updateUI() {
    
        descriptionLbl.text = pokemon.description
        
        typeLbl.text = pokemon.type
        
        defenseLbl.text = pokemon.defense
        
        heightLbl.text = pokemon.height
        
        pokedexIdLbl.text = "\(pokemon.pokedexId)"
        
        weightLbl.text = pokemon.weight
        
        baseAttackLbl.text = pokemon.baseAttack
        
        if pokemon.nextEvolutionId == "" {
            nextEvoLbl.text = "This pokemon have no Evolution"
            evo2Img.hidden = true
        } else {
            nextEvoLbl.text = pokemon.nextEvolutionTxt
            evo2Img.image = UIImage(named: pokemon.nextEvolutionId)
        }
        
        
    }
    
    // MARK: Actions
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    

}
