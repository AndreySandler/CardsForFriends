//
//  CardViewController.swift
//  CardsForFriends
//
//  Created by Andrey Sandler on 05.10.2022.
//

import UIKit

class CardViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var habitateLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    @IBOutlet var foodLabel: UILabel!
    
    // MARK: - Public Properties
    var name: String!
    var surname: String!
    var age: String!
    var habitate: String!
    var hobby: String!
    var food: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [#colorLiteral(red: 0.9507465959, green: 0.480499506, blue: 0.507527709, alpha: 1).cgColor, #colorLiteral(red: 0.866619885, green: 0.6335844994, blue: 0.9783375859, alpha: 1).cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        nameLabel.text = name
        surnameLabel.text = surname
        ageLabel.text = age
        habitateLabel.text = habitate
        hobbyLabel.text = hobby
        foodLabel.text = food
    }
}
