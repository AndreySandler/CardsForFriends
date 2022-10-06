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
        addGradient()
        
        nameLabel.text = name
        surnameLabel.text = surname
        ageLabel.text = age
        habitateLabel.text = habitate
        hobbyLabel.text = hobby
        foodLabel.text = food
    }
}
